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
      if !user_signed_in?
        puts('test1')
        session.delete(:character)
      elsif session[:character].nil? and !current_user.last_character.nil?
        puts('test2')
        session[:character] = current_user.last_character
      elsif session[:character].nil? and !current_user.characters.first.nil?
        puts('test3')
        session[:character] = current_user.characters.first.id
        current_user.last_character = session[:character]
        current_user.save!
      end

      if session[:character] and Character.find(session[:character]).nil?
        puts('t1')
        session.delete(:character)
      elsif session[:character] and (current_user.id != Character.find(session[:character]).user_id and current_user.usertype != 'Admin')
        puts('t2')
          session.delete(:character)
      end
      
      @character = Character.find_by(id: session[:character])
    end
end
