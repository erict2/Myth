# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    if user_signed_in?
      if current_user.last_character.nil?
        if !current_user.characters.first.nil?
          session[:character] = current_user.characters.first.id
          current_user.last_character = session[:character]
          current_user.save!
        end
        
      else
        session[:character] = current_user.last_character
      end
    end
    super
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
