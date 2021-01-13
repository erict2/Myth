class CharacterController < ApplicationController
  before_action :authenticate_user!

  def events
    @character = Character.find(params[:character_id])

  end
  def getcharacter
    @character = Character.find(params[:character_id])
    @deity = @character.deity
    @characterclass = @character.characterclass

    respond_to do |format|
      format.json { render json: {all_data: {character: @character, deity: @deity, characterclass: @characterclass}}}
    end
  end

end