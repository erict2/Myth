class Player::CharacterskillsController < PlayerController
  before_action :check_character_user
  before_action :check_sheets_locked

  def new
    @characterskill = Characterskill.new

    @character = Character.find_by(id: params[:character_id])
    @favoredfoes = [ 'Beasts', 'Constructs', 'Elementals', 'Monstrous Humanoids', 'Plants', 'Undead' ] - @character.characterskills.where(skill: Skill.find_by(name: 'Favored Foe')).pluck('details')
    @availableskills = []
    @availablegroups = []

    @character.characterclass.skillgroups.where('skillgroups.playeravailable = true').each do |skillgroup|
      skilllist = []
      
      @character.characterclass.skills.where('skills.playeravailable = true and skills.skillgroup_id = ?', skillgroup.id).each do |skill|
        if (can_purchase(@character, skill))
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

  def create    
    @characterskill = Characterskill.new(addskill_params)
    @character = Character.find_by(id: params[:character_id])
    puts('checking: ' + @characterskill.skill.name)
    if can_purchase(@character, @characterskill.skill)
      @characterskill.save!
    end
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
    params.require(:characterskill).permit(:skill_id, :character_id, :favoredfoe, :alignmentfocus)
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

  def can_purchase(character, skill)
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

end