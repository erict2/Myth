# frozen_string_literal: true

class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  def index; end

  def check_admin
    if current_user.usertype != 'Admin'
      redirect_to root_path
      return true
    end
    false
  end
end
