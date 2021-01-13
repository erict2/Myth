class CharacterController < ApplicationController
  before_action :authenticate_user!
  before_action :check_character_user, only: [:edit, :update]
  before_action :check_sheets_locked, only: [:edit, :update]

  def index
    @character = Character.find(session[:character])
    @exptolevel = helpers.expToLevel(@character)
    
  end

  def events
    @character = Character.find(session[:character])

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

  def check_character_count
    if (current_user.charactercount <= current_user.characters.count)
      redirect_to player_characters_path
      return true
    end
    false
  end

  def check_character_user
    if (current_user.id != Character.find(params[:id]).user_id)
      redirect_to player_characters_path
      return true
    end
    false
  end

  def check_sheets_locked
    if (helpers.sheetsLocked)
      redirect_to player_characters_path
      return true
    end
    false
  end


end