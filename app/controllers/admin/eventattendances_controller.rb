class Admin::EventattendancesController < AdminController
  def new
    @eventattendance = Eventattendance.new
    @event = Event.find_by(id: params[:event_id])
    @characters = Character.all
    respond_to do |format|
      format.js
    end
  end

  def create
    @eventattendance = Eventattendance.new(event_params)
    @eventattendance.character_id = params[:character_id]
    @eventattendance.event_id = params[:event_id]

    if @eventattendance.save
        redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
    else
        redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
    end
  end

  private
  def event_params
    params.require(:eventattendance).permit(:character_id, :event_id)
  end
end