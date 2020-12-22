class Admin::CharactersController < AdminController
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
    @character.user_id = params[:user_id]

    if @character.save!
      redirect_to admin_user_path(params[:user_id])
    else
      render 'new'
    end
  end

  def edit
    @character = Character.find(params[:id])

  end

  def update
    @character = Character.find(params[:id])

    if @character.update(character_params)
      redirect_to admin_user_character_path(@character)
    else
      render 'edit'
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
  
    redirect_to admin_user_path(params[:user_id])
  end
  
  private

  def character_params
    params.require(:character).permit(:name, :pronouns, :deity_id, :race_id, :characterclass_id, :user_id, :level)
  end

end
