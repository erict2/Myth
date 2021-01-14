class CharacterController < ApplicationController
  before_action :authenticate_user!
  before_action :check_character_user, only: [:edit, :update, :trainskill, :trainprofession]
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
    if @character.update(character_params)
      redirect_to character_index_path
    end
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

  def learnprofession
    if request.post?
      
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

  private

  def character_params
    params.require(:character).permit(:name, :pronouns, :deity_id, :race_id, :characterclass_id, :totem)
  end

  def addskill_params
    params.require(:characterskill).permit(:skill_id, :favoredfoe, :alignmentfocus)
  end

  def check_character_count
    if (current_user.charactercount <= current_user.characters.count)
      redirect_to player_characters_path
      return true
    end
    false
  end

  def check_character_user
    if (current_user.id != Character.find(session[:character]).user_id)
      redirect_to root_path
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