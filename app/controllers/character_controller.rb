class CharacterController < ApplicationController
  before_action :authenticate_user!
  before_action :check_character_user, only: [:edit, :update]
  before_action :check_sheets_locked, only: [:edit, :update]

  def index
    @character = Character.find(session[:character])
  end

  def new
    @character = Character.new
    if current_user.usertype = 'Admin'
      @race = Race.all
      @characterclass = Characterclass.all
      @deity = Deity.all
    else
      @race = Race.all.where('playeravailable = true')
      @characterclass = Characterclass.all.where('playeravailable = true')
      @deity = Deity.all.where('playeravailable = true')
    end
  end

  def edit
    @character = Character.find(session[:character])

    if current_user.usertype = 'Admin'
      @race = Race.all
      @characterclass = Characterclass.all
      @deity = Deity.all
    else
      @race = Race.all.where('playeravailable = true')
      @characterclass = Characterclass.all.where('playeravailable = true')
      @deity = Deity.all.where('playeravailable = true')
    end
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      redirect_to character_index_path
    end
  end

  def events
    @character = Character.find(session[:character])

  end

  def levelup
    @character = Character.find(session[:character])
    @exptolevel = helpers.expToLevel(@character)
    
    if (current_user.explogs.where('acquiredate <= ? ', Time.now.end_of_day ).sum(:amount) > @exptolevel)
      @character.level = @character.level + 1
      @character.levelupdate = Time.now

      @explog = Explog.new
      @explog.user_id = @character.user_id
      @explog.name = 'Level Up'
      @explog.acquiredate = Time.now
      @explog.description = 'Leveled "' + @character.name + '" to ' + @character.level.to_s
      @explog.amount = @exptolevel * -1
      @explog.grantedby_id = current_user.id

      @explog.save!
      @character.save!
    end
    redirect_to character_index_path
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

  def character_params
    params.require(:character).permit(:name, :pronouns, :deity_id, :race_id, :characterclass_id, :totem)
  end

  def check_character_count
    if (current_user.charactercount <= current_user.characters.count)
      redirect_to player_characters_path
      return true
    end
    false
  end

  def check_character_user
    if (current_user.id != Character.find(session[:character]).user_id)
      redirect_to root_path
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