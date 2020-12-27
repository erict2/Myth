class Player::CharacterskillsController < PlayerController
  before_action :check_character_user, only: [:show, :edit, :update, :destroy]

  def new
    @characterskill = Characterskill.new
    
    @character = Character.find_by(id: params[:character_id])
    @favoredfoes = [ 'Beasts', 'Constructs', 'Elementals', 'Monstrous Humanoids', 'Plants', 'Undead' ] - @character.characterskills.where(skill: Skill.find_by(name: 'Favored Foe')).pluck('details')
    @weaponspec = [ 'One-Handed', 'Two-Handed', 'Ranged', 'Sword and Shield', 'Dual Wield' ] - @character.characterskills.where(skill: Skill.find_by(name: 'Weapon Specialization')).pluck('details')
    cpavailable = ((@character.level * 50) + 50) - (@character.skills.sum(:tier) * 10)
    maxtier = cpavailable / 10
    charskilllist = []
    Characterclass.find_by(id: @character.characterclass_id).skills.where('skills.playeravailable = true').each do |skill|
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
      redirect_to player_character_path(id: params[:character_id])
    else
      redirect_to player_character_path(id: params[:character_id])
    end
  end

  def destroy
    @characterskill = Characterskill.order('aquiredate desc, id desc').find_by(skill_id: params[:id], character_id: params[:character_id])
    @character = Character.find_by(id: params[:character_id])

    if (@character.events.where('startdate < ?', Time.now).maximum(:startdate).nil?) || !(@character.events.where('startdate < ?', Time.now).maximum(:startdate) > @characterskill.aquiredate)
      @characterskill.destroy
      redirect_to player_character_path(id: params[:character_id])
    else
      @explog = Explog.new
      @explog.character_id = @character.id
      @explog.name = 'Skill Refund'
      @explog.aquiredate = Time.now
      @explog.description = 'Exp for refunding: ' + @characterskill.skill.name
      @explog.amount = @characterskill.skill.tier * -25
      @explog.grantedby_id = current_user.id
      @explog.save!
      @characterskill.destroy
      redirect_to player_character_path( id: params[:character_id])
    end    
  end

  def destroy
    @characterskill = Characterskill.order('aquiredate desc, id desc').find_by(skill_id: params[:id], character_id: params[:character_id])
    @character = Character.find_by(id: params[:character_id])

    if (@character.events.where('startdate < ?', Time.now).maximum(:startdate).nil?) || !(@character.events.where('startdate < ?', Time.now).maximum(:startdate) > @characterskill.aquiredate)
      @characterskill.destroy
      redirect_to player_character_path(id: params[:character_id])
    else
      @explog = Explog.new
      @explog.character_id = @character.id
      @explog.name = 'Skill Refund'
      @explog.aquiredate = Time.now
      @explog.description = 'Exp for refunding: ' + @characterskill.skill.name
      @explog.amount = @characterskill.skill.tier * -25
      @explog.grantedby_id = current_user.id
      @explog.save!
      @characterskill.destroy
      redirect_to player_character_path(id: params[:character_id])
    end    
  end
  
  private
  def addskill_params
    params.require(:characterskill).permit(:skill_id, :character_id, :favoredfoe, :weaponspec)
  end

  def check_character_user
    if (current_user.id != Character.find(params[:id]).user_id)
      redirect_to player_characters_path
      return true
    end
    false
  end

end