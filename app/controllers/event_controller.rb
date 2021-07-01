# frozen_string_literal: true

class EventController < ApplicationController

  def index

  end
  
  def show
    @event = Event.find(params[:id])
    @myeventattendance = @event.eventattendances.find_by(user_id: current_user.id, event_id: @event.id)
    
  end

  def mealplan

  end

  def updatecabin
    @myeventattendance = Eventattendance.find_by(event_id: params[:event_id], user_id: current_user.id)
    if request.patch?
      @myeventattendance.update(eventattendance_params)
      redirect_to event_path(params[:event_id])
    else
      @event = Event.find(params[:event_id])
      @availablecabins = Event.available_cabins(@event, @myeventattendance)
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def eventattendance_params
    params.require(:eventattendance).permit(:event_id, :cabin_id)
  end

end
