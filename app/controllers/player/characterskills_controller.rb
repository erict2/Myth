class Player::CharacterskillsController < PlayerController
  before_action :check_character_user
  before_action :check_sheets_locked

  def new
    @characterskill = Characterskill.new

    @character = Character.find_by(id: params[:character_id])
    @favoredfoes = [ 'Beasts', 'Constructs', 'Elementals', 'Monstrous Humanoids', 'Plants', 'Undead' ] - @character.characterskills.where(skill: Skill.find_by(name: 'Favored Foe')).pluck('details')
    cpavailable = ((@character.level * 50) + 50) - (@character.skills.sum(:tier) * 10)
    maxtier = cpavailable / 10
    @availableskills = []
    @availablegroups = []

    @character.characterclass.skillgroups.where('skillgroups.playeravailable = true').each do |skillgroup|
      skilllist = []
      
      @character.characterclass.skills.where('skills.playeravailable = true and skills.skillgroup_id = ?', skillgroup.id).each do |skill|
        if Skillrequirement.exists?(skill: skill.id)
          canpurchase = true
          Skillrequirement.where(skill: skill.id).each do |r|
            if !@character.skills.exists?(id: r.requiredskill_id)
              canpurchase = false
            end
          end
          if !canpurchase
            next
          end
        end
        if @character.skills.where(name: skill.name).count >= skill.maxpurchase
          next
        end
        if skill.tier > maxtier
          next
        end
        if ((skill.tier == 5) and (@character.skills.where('tier = 4').count < 2))
          next
        end
        if ((skill.tier == 6) and ((@character.skills.where('tier = 4').count < 3) or (@character.skills.where('tier = 5').count < 2)))
          next
        end
          skilllist.push([skill.name, skill.id]) 
      end
      if (!skilllist.empty?)
        @availableskills.push([skillgroup.name, skilllist])
        @availablegroups.push(skillgroup.name)
      end
    end
    respond_to do |format|
      format.js
    end
  end

  def create    
    @characterskill = Characterskill.new(addskill_params)
    @character = Character.find_by(id: params[:character_id])

    @characterskill.save!
    redirect_to player_character_path(id: params[:character_id])

  end

  def destroy
    @characterskill = Characterskill.order('acquiredate desc, id desc').find_by(skill_id: params[:id], character_id: params[:character_id])
    @character = Character.find_by(id: params[:character_id])

    if (@character.events.where('startdate < ?', Time.now).maximum(:startdate).nil?) || !(@character.events.where('startdate < ?', Time.now).maximum(:startdate) > @characterskill.acquiredate)
      @characterskill.destroy
      redirect_to player_character_path(id: params[:character_id])
    else
      @explog = Explog.new
      @explog.user_id = @character.user_id
      @explog.name = 'Skill Refund'
      @explog.acquiredate = Time.now
      @explog.description = 'Refunded "' + @characterskill.skill.name + '" for "' + @character.name + '"'
      @explog.amount = @characterskill.skill.tier * -25
      @explog.grantedby_id = current_user.id
      @explog.save!
      @characterskill.destroy
      redirect_to player_character_path( id: params[:character_id])
    end    
  end
  
  private
  def addskill_params
    params.require(:characterskill).permit(:skill_id, :character_id, :favoredfoe)
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

end