class Admin::DatatablesController < AdminController
  def index
    @race = Race.all
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