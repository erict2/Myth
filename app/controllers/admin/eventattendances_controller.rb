# frozen_string_literal: true

module Admin
  class EventattendancesController < AdminController
    def new
      @eventattendance = Eventattendance.new
      @event = Event.find_by(id: params[:event_id])
      @users = User.all.where('id NOT IN (SELECT user_id FROM eventattendances WHERE event_id = ?)', @event.id)
      @characters = Character.all
      respond_to do |format|
        format.js
      end
    end

    def create
      @eventattendance = Eventattendance.new(adduser_params)
      @event = Event.find_by(id: @eventattendance.event_id)

      if @eventattendance.save!
        @explog = Explog.new
        @explog.user_id = @eventattendance.user_id
        @explog.name = 'Event'
        @explog.acquiredate = @event.startdate
        @explog.description = "Exp for attending Event \"#{@eventattendance.event.name}\" as a #{@eventattendance.registrationtype}"
        @explog.amount = @event.eventexp
        @explog.grantedby_id = current_user.id
        @explog.save!
        redirect_to admin_event_path(@event)
      end
    end

    def edit
      @eventattendance = Eventattendance.find_by(id: params[:id])
      @event = Event.find_by(id: @eventattendance.event_id)
      @users = User.all

      respond_to do |format|
        format.js
      end
    end

    def update
      @eventattendance = Eventattendance.find_by(id: params[:id])
      @event = Event.find_by(id: @eventattendance.event_id)
      @eventattendance.update(adduser_params)

      @explog = Explog.where('acquiredate BETWEEN ? AND ?', @event.startdate.beginning_of_day, @event.startdate.end_of_day).find_by(
        name: 'Event', user_id: @eventattendance.user_id
      )
      if @explog
        @explog.description = "Exp for attending Event \"#{@eventattendance.event.name}\" as a #{@eventattendance.registrationtype}"
        @explog.save!
      end

      redirect_to admin_event_path(@event)
    end

    def destroy
      @eventattendance = Eventattendance.find_by(user_id: params[:user_id], event_id: params[:event_id])
      @event = Event.find_by(id: params[:event_id])
      @explog = Explog.where('acquiredate BETWEEN ? AND ?', @event.startdate.beginning_of_day, @event.startdate.end_of_day).find_by(
        name: 'Event', user_id: @eventattendance.user_id
      )

      @explog&.destroy
      @eventattendance.destroy
      redirect_to admin_event_path(@event)
    end

    private

    def adduser_params
      params.require(:eventattendance).permit(:user_id, :event_id, :registrationtype, :character_id, :cabin)
    end
  end
end
