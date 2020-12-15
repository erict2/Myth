class Admin::DatatablesController < AdminController
  def index
    @race = Race.all
    @class = Characterclass.all
    @deity = Deity.all
    @skilldelivery = Skilldelivery.all
    @skillgroup = Skillgroup.all
    @resttype = Resttype.all
  end
end