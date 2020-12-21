class Admin::UsersController < AdminController
  before_action :authenticate_user!
  before_action :check_admin
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to admin_user_path(params[:id])
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  
    redirect_to admin_users_path
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :usertype)
  end

  def check_admin
    if current_user.usertype != 'Admin'
      redirect_to root_path
      return true
    end
    false
  end

end