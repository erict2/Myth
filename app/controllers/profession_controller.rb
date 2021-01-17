class ProfessionController < ApplicationController
  before_action :authenticate_user!

  def getprofession
    @race = Race.find_by(id: params[:race_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @race }
    end
  end
end