class Admin::CharacterskillsController < AdminController
  def new
    @characterskill = Characterskill.new
    
    @character = Character.find_by(id: params[:character_id])
    @favoredfoes = [ 'Beasts', 'Constructs', 'Elementals', 'Monstrous Humanoids', 'Plants', 'Undead' ] - @character.characterskills.where(skill: Skill.find_by(name: 'Favored Foe')).pluck('details')
    cpavailable = ((@character.level * 50) + 50) - (@character.skills.sum(:tier) * 10)
    maxtier = cpavailable / 10
    skilllist = []
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

    if @characterskill.save!
      redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
    else
      redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
    end
  end

  def destroy
    @characterskill = Characterskill.order('acquiredate desc, id desc').find_by(skill_id: params[:id], character_id: params[:character_id])
    @character = Character.find_by(id: params[:character_id])

    @characterskill.destroy 
  end
  
  private
  def addskill_params
    params.require(:characterskill).permit(:skill_id, :character_id, :favoredfoe, :weaponspec, :acquiredate)
  end

end