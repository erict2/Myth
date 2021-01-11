class PagesController < ApplicationController
  before_action :check_character_user

  def index
    if !user_signed_in?
      #Do nothing if not signed in
    elsif !current_user.last_character.nil?
      session[:character] = current_user.last_character
    else
      if !current_user.characters.first.nil?
        session[:character] = current_user.characters.first.id
      end
    end
  end

  def check_character_user
    if session[:character]
      if (current_user.id != Character.find(session[:character]).user_id)
        session.delete(:character)
      end
    end
  end
end