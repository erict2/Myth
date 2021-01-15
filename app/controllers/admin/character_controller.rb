class Admin::CharacterController < AdminController
  def index
    @characters = Character.all
    @users = User.all
  end

  def new
    @character = Character.new
    @user = User.find(params[:user_id])
  end

  def show
    @character = Character.find(params[:id])
   
  end

  def create
    @character = Character.new(character_params)

    @character.save!
    redirect_to admin_user_path(@character.user_id)
  end

  def edit
    @character = Character.find(params[:id])

  end

  def update
    @character = Character.find(params[:id])

    @character.update(character_params)
    redirect_to admin_user_character_path(@character)
    
  end

  def loginas
    session[:character] = params[:character_id]
    redirect_to root_path
  end

  private

  def character_params
    params.require(:character).permit(:name, :pronouns, :deity_id, :race_id, :characterclass_id, :user_id, :level)
  end

end
