class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :update_allowed_parameters, if: :devise_controller?
    before_action :check_character_session
  
    def index
      @skills = Skill.all
    end
    
    protected
  
    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:firstname, :lastname, :email, :password)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:firstname, :lastname, :email, :password, :current_password)}
    end

    def check_character_session
      if user_signed_in?
        if session[:character].nil?
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
      end
    end
end
