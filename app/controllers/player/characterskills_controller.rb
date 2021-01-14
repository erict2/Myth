class Player::CharacterskillsController < PlayerController

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
  

  

end