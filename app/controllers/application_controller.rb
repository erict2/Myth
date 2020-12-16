class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :update_allowed_parameters, if: :devise_controller?
  
    def index
      @skills = Skill.all
    end
    
    protected
  
    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:firstname, :lastname, :email, :password)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:firstname, :lastname, :email, :password, :current_password)}
    end
end
