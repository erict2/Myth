class Admin::DatatablesController < AdminController
  def index
    @race = Race.all
    @class = Characterclass.all
    @deity = Deity.all
    @skilldelivery = Skilldelivery.all
    @skillgroup = Skillgroup.all
    @resttype = Resttype.all
  end

  def edit
    case params[:tablename]
      when 'race'
        @datatable = Race.all
      when 'class'
        @datatable = Characterclass.all
      when 'deity'
        @datatable = Deity.all
      when 'skilldelivery'
        @datatable = Skilldelivery.all
    end
  end

  def update
  end
end