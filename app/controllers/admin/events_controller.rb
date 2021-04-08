# frozen_string_literal: true

module Admin
  class EventsController < AdminController
    def index
      @events = Event.all
    end

    def show
      @event = Event.find(params[:id])
    end

    def new
      @event = Event.new
      @event.levelingevent = true
      respond_to do |format|
        format.js
      end
    end

    def edit
      @event = Event.find(params[:id])
      respond_to do |format|
        format.js
      end
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
      params.require(:event).permit(:name, :description, :startdate, :enddate, :eventtype, :levelingevent, :location,
                                    :earlybirdcost, :atdoorcost, :eventexp, :feedbackexp)
    end

    def updateevent_params
      params.require(:event).permit(:name, :description, :startdate, :enddate, :eventtype, :levelingevent, :location,
                                    :earlybirdcost, :atdoorcost, :eventexp, :feedbackexp, :castcount)
    end
  end
end
