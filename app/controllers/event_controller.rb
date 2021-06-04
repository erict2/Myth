# frozen_string_literal: true

class EventController < ApplicationController

  def show
    @character = Character.find(session[:character])
    @event = Event.find(params[:id])
    
    @myeventattendance = @event.eventattendances.find_by(character_id: @character.id, event_id: @event.id)
    cabinlist = {}



    @event.eventattendances.where(registrationtype: 'Player').where.not(cabin: nil).each do |eventattendance|
      if !cabinlist[eventattendance.cabin.name]
        cabin = []
      else
        cabin = cabinlist[eventattendance.cabin.name]
      end
      
      cabin << eventattendance.id
      cabinlist[eventattendance.cabin.name] = cabin
    end
  end

  def updatecabin
    if request.patch?
      @myeventattendance = Eventattendance.find_by(event_id: params[:event_id], character_id: session[:character])     
      @myeventattendance.update(eventattendance_params)
      redirect_to event_path(params[:event_id])
    else
      @event= Event.find(params[:event_id])
      @eventattendance = Eventattendance.find_by(event_id: params[:event_id], character_id: session[:character])     
      @availablecabins = []

      if @eventattendance.registrationtype = 'Player'
        @cabins = Cabin.where(playeravailable: true)
      else
        @cabins = Cabin.where(castavailable: true)
      end
      
      @cabins.distinct.pluck(:location).each do |cabinlocation|
        cabinlist = []
        @cabins.where(location: cabinlocation).each do |cabin|
          if (@event.eventattendances.where(cabin_id: cabin.id).count <= cabin.maxplayers) || cabin.maxplayers = -1
            cabinlist.push([cabin.name, cabin.id])
          end
        end
        unless cabinlist.empty?
          @availablecabins.push([cabinlocation, cabinlist])
        end
      end

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
