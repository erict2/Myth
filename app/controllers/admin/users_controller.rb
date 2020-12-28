class Admin::UsersController < AdminController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])

    respond_to do |format|
      format.js
    end
  end

  def update
    @user = User.find(params[:id])

    @user.update(user_params)
    redirect_to admin_user_path(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  
    redirect_to admin_users_path
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :usertype, :charactercount)
  end

end