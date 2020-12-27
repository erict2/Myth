class Player::CharactersController < PlayerController
  before_action :check_character_count, only: [:new, :create]
  before_action :check_character_user, only: [:show, :edit, :update]

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

  private

  def character_params
    params.require(:character).permit(:name, :pronouns, :deity_id, :race_id, :characterclass_id)
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

end