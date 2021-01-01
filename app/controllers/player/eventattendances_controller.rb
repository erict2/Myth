class Player::EventattendancesController < PlayerController
  def edit
    @characters = current_user.characters.all.where('Status = ?', 'Active')
    @eventattendance = Eventattendance.find_by(id: params[:id])
    if(@eventattendance.user_id == current_user.id)
      respond_to do |format|
        format.js
      end
    end
  end

  def update
    @eventattendance = Eventattendance.find_by(id: params[:id])
    if(@eventattendance.user_id == current_user.id)
      @eventattendance.update!(addchar_params)
      redirect_to player_characters_path
    end
  end

  private
  def addchar_params
    params.require(:eventattendance).permit(:character_id)
  end
end