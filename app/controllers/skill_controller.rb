class SkillController < ApplicationController
  before_action :authenticate_user!

  def getskill
    @skill = Skill.find_by(id: params[:skill_id])
    @resttype = @skill.resttype
    @skilldelivery = @skill.skilldelivery

    respond_to do |format|
      format.json { render json: {all_data: {skill: @skill, resttype: @resttype, skilldelivery: @skilldelivery}}}
    end
  end
end