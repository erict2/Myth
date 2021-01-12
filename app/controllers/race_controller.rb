class RaceController < ApplicationController
  before_action :authenticate_user!

  def getrace
    @race = Race.find_by(id: params[:race_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @race }
    end
  end
end