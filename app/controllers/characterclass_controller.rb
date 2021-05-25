# frozen_string_literal: true

class CharacterclassController < ApplicationController
  before_action :authenticate_user!

  def getcharacterclass
    @characterclass = Characterclass.find_by(id: params[:characterclass_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @characterclass }
    end
  end
end
