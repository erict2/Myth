# frozen_string_literal: true

class DeityController < ApplicationController
  before_action :authenticate_user!

  def getdeity
    @deity = Deity.find_by(id: params[:deity_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @deity }
    end
  end
end
