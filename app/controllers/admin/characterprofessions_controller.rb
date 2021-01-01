class Admin::CharacterprofessionsController < PlayerController

  def new
    @characterprofession = Characterprofession.new
    @character = Character.find_by(id: params[:character_id])
    
    @availableprofessions = []
    @availablegroups = []
    Professiongroup.all.each do |professiongroup|
      professionlist = []
      professiongroup.professions.each do |profession|
         if Professionrequirement.exists?(profession: profession.id)
          canpurchase = true
          Professionrequirement.where(profession: profession.id).each do |r|
            if !@character.professions.exists?(id: r.requiredprofession_id)
              canpurchase = false
            end
          end
          if !canpurchase
            next
          end
        end
        if @character.professions.where(name: profession.name).count >= 1
          next
        end

        professionlist.push([profession.name, profession.id]) 
      end
      if (!professionlist.empty?)
        @availableprofessions.push([professiongroup.name, professionlist])
        @availablegroups.push(professiongroup.name)
      end
    end
    respond_to do |format|
      format.js
    end
  end

  def create
    @characterprofession = Characterprofession.new(addprof_params)
    @character = Character.find_by(id: params[:character_id])  

    @characterprofession.save!
    redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
  end

  def destroy
    @characterprofession = Characterprofession.order('acquiredate desc, id desc').find_by(profession_id: params[:id], character_id: params[:character_id])
    @character = Character.find_by(id: params[:character_id])

    @characterprofession.destroy
    redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
  end

  private
  def addprof_params
    params.require(:characterprofession).permit(:profession_id, :character_id, :acquiredate)
  end
end