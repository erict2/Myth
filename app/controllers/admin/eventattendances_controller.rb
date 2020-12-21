class Admin::EventattendancesController < AdminController
  def new
    @eventattendance = Eventattendance.new
    @event = Event.find_by(id: params[:event_id])
    @characters = Character.all
    @users = User.all
    respond_to do |format|
      format.js
    end
  end

  def create    
    @eventattendance = Eventattendance.new(addchar_params)
    if @eventattendance.save
      redirect_to edit_admin_event_path(params[:event_id])
    else
        redirect_to edit_admin_event_path(params[:event_id])
    end
  end

  private
  def addchar_params
    params.require(:eventattendance).permit(:character_id, :event_id, :startdate, :enddate)
  end
end