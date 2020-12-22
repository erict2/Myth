class Admin::CharacterskillsController < AdminController
  def new
    @character = Character.find_by(id: params[:character_id])
    respond_to do |format|
      format.js
    end
  end
end