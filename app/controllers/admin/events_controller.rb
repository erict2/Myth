class Admin::EventsController < AdminController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    respond_to do |format|
      format.js
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(updateevent_params)
      redirect_to admin_events_path
    else
      render 'edit'
    end
  end

  def create
    @event = Event.new(addevent_params)

    if @event.save
        redirect_to admin_events_path
    else
        redirect_to admin_events_path
    end
  end

  private
  def addevent_params
    params.require(:event).permit(:name, :description, :startdate, :enddate)
  end

  def updateevent_params
    params.require(:event).permit(:name, :description, :startdate, :enddate, :castcount)
  end

end