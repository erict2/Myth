class RaceController < ApplicationController
  before_action :authenticate_user!

  def getrace
    @race = Race.find_by(id: params[:race_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @race }
    end
  end

  def edit
    @race = Race.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def update
    @race = Race.find(params[:id])
    @race.update(raceparams)
    redirect_to admin_datatables_path({tab: 'race'})

  end

  private

  def check_admin
    if current_user.usertype != 'Admin'
      redirect_to root_path
    end
  end

  def raceparams
    params.require(:race).permit(:name, :shortdescription, :playeravailable)
  end
end