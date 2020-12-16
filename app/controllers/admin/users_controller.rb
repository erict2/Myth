class Admin::UsersController < AdminController
    def index
        @users = User.all
    end

    def show
        session[:user_id] = params[:id]
        @user = User.find(session[:user_id])
    end

    def create
        @user = User.new(user_params)
        
        if @user.save
            redirect_to admin_users_path
        else
          render 'new'
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
 
        if @user.update(user_params)
            redirect_to admin_user_path(session[:user_id])
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
end