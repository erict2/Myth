# frozen_string_literal: true

class EventController < ApplicationController

  def index
  end

  def show
    @character = Character.find(session[:character])
    @event = Event.find(params[:id])
    cabinlist = {}

    @event.eventattendances.where(registrationtype: 'Player').where.not(cabin: nil).each do |eventattendance|
      if !cabinlist[eventattendance.cabin.name]
        cabin = []
      else
        cabin = cabinlist[eventattendance.cabin.name]
      end
      
      cabin << eventattendance.id
      cabinlist[eventattendance.cabin.name] = cabin
      puts 'TACO1'
      puts eventattendance.id
      puts 'TACO2'
    end
    puts cabinlist
    cabinlist['American Chestnut'].each do |item|
      puts item
  end

  end
end
