# frozen_string_literal: true

class RaceController < ApplicationController
  before_action :authenticate_user!

  def getrace
    @race = Race.find_by(id: params[:race_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @race }
    end
  end

  def edit
    @race = Race.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  private
  
  def raceparams
    params.require(:race).permit(:name, :shortdescription, :playeravailable)
  end
end
