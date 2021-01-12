class CharacterController < ApplicationController
  before_action :authenticate_user!


  def changecharacter
    if request.post?
      @changedcharacter = Character.find(changecharacter_params[:character_id])
      current_user.last_character = @changedcharacter.id
      session[:character] = @changedcharacter.id
      current_user.save!

      redirect_to root_path
    else
      #handle gets. Do nothing
    end

  end

  def getcharacter
    @character = Character.find(params[:character_id])
    @deity = @character.deity
    @characterclass = @character.characterclass

    respond_to do |format|
      format.json { render json: {all_data: {character: @character, deity: @deity, characterclass: @characterclass}}}
    end
  
  end

  private

  def changecharacter_params
    params.require(:changecharacter).permit(:character_id)
  end
end