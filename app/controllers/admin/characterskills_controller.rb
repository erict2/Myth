class Admin::CharacterskillsController < AdminController
  def new
    @characterskill = Characterskill.new
    
    @character = Character.find_by(id: params[:character_id])
    @favoredfoes = [ 'Beasts', 'Constructs', 'Elementals', 'Monstrous Humanoids', 'Plants', 'Undead' ] - @character.characterskills.where(skill: Skill.find_by(name: 'Favored Foe')).pluck('details')
    @weaponspec = [ 'One-Handed', 'Two-Handed', 'Ranged', 'Sword and Shield', 'Dual Wield' ] - @character.characterskills.where(skill: Skill.find_by(name: 'Weapon Specialization')).pluck('details')
    cpavailable = ((@character.level * 50) + 50) - (@character.skills.sum(:tier) * 10)
    maxtier = cpavailable / 10
    charskilllist = []
    Characterclass.find_by(id: @character.characterclass_id).skills.each do |skill|
      @canbuy = true
      if Skillrequirement.exists?(skill: skill.id)
        Skillrequirement.where(skill: skill.id).each do |r|
          if !@character.skills.exists?(id: r.requiredskill_id)
            @canbuy = false
            next
          end
        end
      end
      if @character.skills.where(name: skill.name).count >= skill.maxpurchase
        @canbuy = false
        next
      end
      if skill.tier > maxtier
        @canbuy = false
        next
      end  
      if @canbuy
        charskilllist <<  skill.id
      end
    end
    @availableskills = Characterclass.find_by(id: @character.characterclass_id).skills.find(charskilllist)
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
    @characterskill = Characterskill.order('aquiredate desc, id desc').find_by(skill_id: params[:id], character_id: params[:character_id])
    @character = Character.find_by(id: params[:character_id])

    @characterskill.destroy 
  end
  
  private
  def addskill_params
    params.require(:characterskill).permit(:skill_id, :character_id, :favoredfoe, :weaponspec, :aquiredate)
  end

end