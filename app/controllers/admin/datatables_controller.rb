# frozen_string_literal: true

module Admin
  class DatatablesController < AdminController
    def index
      @class = Characterclass.all
      @deity = Deity.all
      @skilldelivery = Skilldelivery.all
      @skillgroup = Skillgroup.all
      @resttype = Resttype.all
      @skill = Skill.all
      @professiongroup = Professiongroup.all
      @profession = Profession.all
    end
  end
end
