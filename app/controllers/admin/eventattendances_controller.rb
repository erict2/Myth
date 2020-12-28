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
    @event = Event.find_by(id: @eventattendance.event_id)

    if @eventattendance.save!
      @explog = Explog.new
      @explog.character_id = @eventattendance.character_id
      @explog.name = 'Event'
      @explog.aquiredate = @event.startdate
      @explog.description = 'Exp for Attending a Myth Event'
      @explog.amount = @event.eventexp
      @explog.grantedby_id = current_user.id
      if @explog.save!
        redirect_to edit_admin_event_path(params[:event_id])
      end
    else
        redirect_to edit_admin_event_path(params[:event_id])
    end
  end

  def edit
    @eventattendance = Eventattendance.find_by(id: params[:id])
    @event = Event.find_by(id: @eventattendance.event_id)
    
    respond_to do |format|
      format.js
    end
  end

  def update
    @eventattendance = Eventattendance.find_by(id:params[:id])

    if @eventattendance.update(addchar_params)
      redirect_to edit_admin_event_path(params[:event_id])
    else
      render 'edit'
    end

  end

  def destroy    
    @eventattendance = Eventattendance.find_by character_id: params[:character_id], event_id: params[:event_id]
    @event = Event.find_by(id: params[:event_id])
    @explog = Explog.find_by(name: 'Event', character_id: @eventattendance.character_id, aquiredate: @event.startdate)

    @explog.destroy
    @eventattendance.destroy

    redirect_to edit_admin_event_path(params[:event_id])
  
  end

  private
  def addchar_params
    params.require(:eventattendance).permit(:character_id, :event_id, :cabin)
  end


end