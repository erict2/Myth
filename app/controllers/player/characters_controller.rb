class Player::CharactersController < PlayerController
  before_action :check_character_count, only: [:new, :create]
  before_action :check_character_user, only: [:show, :edit, :update]
  before_action :check_sheets_locked, only: [:edit, :update]

  def index
    
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = current_user.id

    if @character.save!
      redirect_to player_characters_path
    else
      render 'new'
    end
  end

  def show
    @character = Character.find(params[:id])
    @exptolevel = get_exp_to_level
    
  end

  def edit
    @character = Character.find(params[:id])
    
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      redirect_to player_character_path(@character)
    else
      render 'edit'
    end
  end

  def levelup
    @character = Character.find(params[:character_id])
    @exptolevel = get_exp_to_level
    
    if (@character.explogs.where('aquiredate <= ? ', Time.now.end_of_day ).sum(:amount) > @exptolevel)
      @character.level = @character.level + 1
      @character.levelupdate = Time.now

      @explog = Explog.new
      @explog.character_id = @character.id
      @explog.name = 'Level Up'
      @explog.aquiredate = Time.now
      @explog.description = 'Leveled From ' + (@character.level - 1).to_s + ' to ' + @character.level.to_s
      @explog.amount = @exptolevel * -1
      @explog.grantedby_id = current_user.id

      @explog.save!
      @character.save!
    end
    redirect_to player_character_path(@character)

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
    if (current_user.id != Character.find(params[:id]).user_id)
      redirect_to player_characters_path
      return true
    end
    false
  end

  def check_sheets_locked
    if (Setting.sheets_locked)
      redirect_to player_characters_path
      return true
    end
    false
  end

  def get_exp_to_level
    if @character.level.between?(0,1) 
      return 400
    elsif @character.level.between?(2,9) 
      return 500
    elsif @character.level.between?(10,12) 
      return 600
    elsif @character.level.between?(13,14) 
      return 700
    elsif @character.level.between?(15,16) 
      return 800
    elsif @character.level.between?(17,18) 
      return 900
    elsif @character.level.between?(19,20) 
      return 1000
    end
  end

end