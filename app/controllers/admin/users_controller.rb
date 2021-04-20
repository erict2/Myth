# frozen_string_literal: true

module Admin
  class UsersController < AdminController
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

    def reset
      @user = User.find(params[:user_id])
      @raw_token, hashed_token = Devise.token_generator.generate(User, :reset_password_token)
      @user.reset_password_token = hashed_token
      @user.reset_password_sent_at = Time.now
      @user.save!
      respond_to do |format|
        format.js
      end
    end

    def confirm
      @user = User.find(params[:user_id])
      @user.confirmed_at = Time.now.utc
      @user.save!
      respond_to do |format|
        format.js
      end
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy

      redirect_to admin_users_path
    end

    private

    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :aliaslastname, :usertype, :charactercount)
    end
  end
end
