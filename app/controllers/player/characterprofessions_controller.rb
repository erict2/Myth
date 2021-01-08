class Player::CharacterprofessionsController < PlayerController
  before_action :check_character_user
  before_action :check_sheets_locked

  def new
    @characterprofession = Characterprofession.new
    @character = Character.find_by(id: params[:character_id])
    @freeprofessions = false
    availableexp = current_user.explogs.where('acquiredate <= ? ', Time.now.end_of_day ).sum(:amount)
    
    @availableprofessions = []
    @availablegroups = []

    Professiongroup.where('playeravailable = true').each do |professiongroup|
      professionlist = []
      professiongroup.professions.where('playeravailable = true').each do |profession|
        if ((@character.professions.where("name like 'Novice%'").count < 2) and (!profession.name.start_with?('Novice')))
          @freeprofessions = true
          next
        end
        if Professionrequirement.exists?(profession: profession.id)
          canpurchase = true
          Professionrequirement.where(profession: profession.id).each do |r|
            if !@character.professions.exists?(id: r.requiredprofession_id)
              canpurchase = false
            end
          end
          if !canpurchase
            next
          end
        end
        if @character.professions.where(name: profession.name).count >= 1
          next
        end
        if ((availableexp < getExpCost(profession)) and !@freeprofessions)
          next
        end


        professionlist.push([profession.name, profession.id]) 
      end
      if (!professionlist.empty?)
        @availableprofessions.push([professiongroup.name, professionlist])
        @availablegroups.push(professiongroup.name)
      end
    end
    respond_to do |format|
      format.js
    end
  end

  def create
    @characterprofession = Characterprofession.new(addprof_params)
    @character = Character.find_by(id: params[:character_id])  

    if @characterprofession.save!
      if (@character.characterprofessions.count > 2)
        @explog = Explog.new
        @explog.user_id = @character.user_id
        @explog.name = 'Profession Purchase'
        @explog.acquiredate = @characterprofession.acquiredate
        @explog.description = 'Purchased "' + @characterprofession.profession.name + '" for "' + @character.name + '"'
        @explog.amount = getExpCost(@characterprofession.profession) * -1
        @explog.grantedby_id = current_user.id
        @explog.save!
      end
      redirect_to player_character_path( id: params[:character_id])
    end
  end

  def destroy
    @characterprofession = Characterprofession.order('acquiredate desc, id desc').find_by(profession_id: params[:id], character_id: params[:character_id])
    @character = Character.find_by(id: params[:character_id])

    @explog = Explog.find_by(
      user_id: @character.user_id,
      name: 'Profession Purchase',
      description: 'Purchased "' + @characterprofession.profession.name + '" for "' + @character.name + '"',
      amount: getExpCost(@characterprofession.profession) * -1
    )
    if !(@explog.nil?)
      @explog.destroy
    end
    @characterprofession.destroy
    redirect_to player_character_path( id: params[:character_id])
  end

  private
  def addprof_params
    params.require(:characterprofession).permit(:profession_id, :character_id)
  end

  def check_character_user
    if (current_user.id != Character.find(params[:character_id]).user_id)
      redirect_to player_characters_path
      return true
    end
    false
  end

  def check_sheets_locked
    if (helpers.sheetsLocked)
      redirect_to player_characters_path
      return true
    end
    false
  end

  def getExpCost(profession)
    if (profession.name.start_with?('Novice'))
      return 100
    elsif (profession.name.start_with?('Journeyman'))
      return 200
    elsif (profession.name.start_with?('Master'))
      return 300
    end

  end

end