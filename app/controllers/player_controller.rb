class PlayerController < ApplicationController
  before_action :authenticate_user!

  def index
      
  end

  def getcharacter
    @character = Character.find(params[:character_id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @character }
    end

  end

end
