# frozen_string_literal: true

class PlayerController < ApplicationController
  before_action :authenticate_user!

  def changecharacter
    @changedcharacter = Character.find(changecharacter_params[:character_id])
    current_user.last_character = @changedcharacter.id
    session[:character] = @changedcharacter.id
    current_user.save!

    redirect_to root_path
  end

  def changeeventcharacter
    if request.post?
      @eventattendance = Eventattendance.find(eventattendance_params[:eventattendance_id])
      if @eventattendance.user_id == current_user.id
        @eventattendance.character_id = eventattendance_params[:character_id]
        @eventattendance.save!
      end
      redirect_to player_events_path
    else
      @eventattendance = Eventattendance.find_by(id: params[:eventattendance_id])
    end
  end

  private

  def changecharacter_params
    params.require(:changecharacter).permit(:character_id)
  end

  def eventattendance_params
    params.require(:characterattendance).permit(:character_id, :eventattendance_id)
  end
end
