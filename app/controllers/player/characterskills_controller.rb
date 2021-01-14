class Player::CharacterskillsController < PlayerController
  before_action :check_character_user
  before_action :check_sheets_locked

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

  

end