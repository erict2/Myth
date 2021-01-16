class CharacterController < ApplicationController
  before_action :authenticate_user!
  before_action :check_character_user
  before_action :check_sheets_locked, only: [:edit, :update, :trainskill, :trainprofession]

  def index
    @character = Character.find(session[:character])
  end

  def new
    @character = Character.new
    if current_user.usertype = 'Admin'
      @race = Race.all
      @characterclass = Characterclass.all
      @deity = Deity.all
    else
      @race = Race.all.where('playeravailable = true')
      @characterclass = Characterclass.all.where('playeravailable = true')
      @deity = Deity.all.where('playeravailable = true')
    end
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = current_user.id

    if @character.save!
      current_user.last_character = @character.id
      session[:character] = @character.id
      current_user.save!
      redirect_to character_index_path
    end
  end

  def edit
    @character = Character.find(session[:character])

    if current_user.usertype = 'Admin'
      @race = Race.all
      @characterclass = Characterclass.all
      @deity = Deity.all
    else
      @race = Race.all.where('playeravailable = true')
      @characterclass = Characterclass.all.where('playeravailable = true')
      @deity = Deity.all.where('playeravailable = true')
    end
  end

  def update
    
    @character = Character.find(params[:id])
    @character.update(character_params)
    redirect_to root_path

  end

  def events
    @character = Character.find(session[:character])

  end

  def levelup
    @character = Character.find(session[:character])
    @exptolevel = helpers.expToLevel(@character)
    
    if (current_user.explogs.where('acquiredate <= ? ', Time.now.end_of_day ).sum(:amount) > @exptolevel)
      @character.level = @character.level + 1
      @character.levelupdate = Time.now

      @explog = Explog.new
      @explog.user_id = @character.user_id
      @explog.name = 'Level Up'
      @explog.acquiredate = Time.now
      @explog.description = 'Leveled "' + @character.name + '" to ' + @character.level.to_s
      @explog.amount = @exptolevel * -1
      @explog.grantedby_id = current_user.id

      @explog.save!
      @character.save!
    end
    redirect_to character_index_path
  end

  def getcharacter
    @character = Character.find(params[:character_id])
    @deity = @character.deity
    @characterclass = @character.characterclass

    respond_to do |format|
      format.json { render json: {all_data: {character: @character, deity: @deity, characterclass: @characterclass}}}
    end
  end

  def trainskill
    if request.post?
      @characterskill = Characterskill.new(addskill_params)
      @character = Character.find(session[:character])
      @characterskill.character_id = session[:character]
      if can_purchase_skill(@character, @characterskill.skill)
        @characterskill.save!
      end
      redirect_to character_index_path
      
    else
      @characterskill = Characterskill.new

      @character = Character.find(session[:character])
      @favoredfoes = [ 'Beasts', 'Constructs', 'Elementals', 'Monstrous Humanoids', 'Plants', 'Undead' ] - @character.characterskills.where(skill: Skill.find_by(name: 'Favored Foe')).pluck('details')
      @availableskills = []
      @availablegroups = []
  
      @character.characterclass.skillgroups.where('skillgroups.playeravailable = true').each do |skillgroup|
        skilllist = []
        
        @character.characterclass.skills.where('skills.playeravailable = true and skills.skillgroup_id = ?', skillgroup.id).each do |skill|
          if (can_purchase_skill(@character, skill))
            skilllist.push([skill.name, skill.id]) 
          end
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
  end

  def removeskill
    @characterskill = Characterskill.order('acquiredate desc, id desc').find_by(skill_id: params[:skill_id], character_id: session[:character])
    @character = Character.find(session[:character])

    if (@character.events.where('startdate < ?', Time.now).maximum(:startdate).nil?) || !(@character.events.where('startdate < ?', Time.now).maximum(:startdate) > @characterskill.acquiredate)
      @characterskill.destroy
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
    end  
    redirect_to character_index_path
  end

  def learnprofession
    if request.post?
      @characterprofession = Characterprofession.new(addprof_params)
      @character = Character.find(session[:character])
      @characterprofession.character_id = session[:character]
      if @characterprofession.save!
        if (@character.characterprofessions.count > 2)
          @explog = Explog.new
          @explog.user_id = @character.user_id
          @explog.name = 'Profession Purchase'
          @explog.acquiredate = @characterprofession.acquiredate
          @explog.description = 'Purchased "' + @characterprofession.profession.name + '" for "' + @character.name + '"'
          @explog.amount = profession_exp_cost(@characterprofession.profession) * -1
          @explog.grantedby_id = current_user.id
          @explog.save!
        end
        redirect_to character_index_path(:anchor => 'professions')
      end
    else
      @characterprofession = Characterprofession.new
      @character = Character.find(session[:character])
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
          if ((availableexp < profession_exp_cost(profession)) and !@freeprofessions)
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
  end

  def removeprofession
    @characterprofession = Characterprofession.order('acquiredate desc, id desc').find_by(profession_id: params[:profession_id], character_id: session[:character])
    @character = Character.find(session[:character])

    @explog = Explog.find_by(
      user_id: @character.user_id,
      name: 'Profession Purchase',
      description: 'Purchased "' + @characterprofession.profession.name + '" for "' + @character.name + '"',
      amount: profession_exp_cost(@characterprofession.profession) * -1
    )
    if !(@explog.nil?)
      @explog.destroy
    end
    @characterprofession.destroy
    redirect_to character_index_path
  end

  private

  def character_params
    params.require(:character).permit(:name, :pronouns, :deity_id, :race_id, :characterclass_id, :totem, :alias)
  end

  def addskill_params
    params.require(:characterskill).permit(:skill_id, :favoredfoe, :alignmentfocus, :acquiredate)
  end

  def addprof_params
    params.require(:characterprofession).permit(:profession_id)
  end

  def check_character_count
    if (current_user.charactercount <= current_user.characters.count)
      redirect_to player_characters_path
      return true
    end
    false
  end

  def check_character_user
    if (session[:character])
      if (current_user.id != Character.find(session[:character]).user_id and current_user.usertype != 'Admin')
        redirect_to root_path
        return true
      end
      false
    end
  end

  def check_sheets_locked
    if (helpers.sheetsLocked and current_user.usertype != 'Admin')
      redirect_to player_characters_path
      return true
    end
    false
  end

  def can_purchase_skill(character, skill)
    if Skillrequirement.exists?(skill: skill.id)
      Skillrequirement.where(skill: skill.id).each do |r|
        if !@character.skills.exists?(id: r.requiredskill_id)
          return false
        end
      end
    end
    if @character.skills.where(name: skill.name).count >= skill.maxpurchase
      return false
    elsif skill.tier > (((@character.level * 50) + 50) - (@character.skills.sum(:tier) * 10)) / 10
      return false
    elsif ((skill.tier == 5) and (@character.skills.where('tier = 4').count < 2))
      return false
    elsif ((skill.tier == 6) and ((@character.skills.where('tier = 4').count < 3) or (@character.skills.where('tier = 5').count < 2)))
      return false
    end
    return true
  end

  def profession_exp_cost(profession)
    if (profession.name.start_with?('Novice'))
      return 100
    elsif (profession.name.start_with?('Journeyman'))
      return 200
    elsif (profession.name.start_with?('Master'))
      return 300
    end

  end


end