class Admin::CharacterskillsController < AdminController
  def new
    @character = Character.find_by(id: params[:character_id])
    @characterclass = Characterclass.find_by(id: @character.characterclass_id)

    @characterskillgroups = @characterclass.skillgroups.all

    @availableskills = @characterclass.skills.all

    charskilllist = []
    @availableskills.each do |skill|
      if Skillrequirement.exists?(skill: skill.id)
        @canbuy = true
        Skillrequirement.where(skill: skill.id).each do |r|
          if !@character.skills.exists?(id: r.requiredskill_id)
            @canbuy = false
          end
          if @canbuy
            charskilllist <<  skill.id
          end
        end
      else
        charskilllist << skill.id
      end
    end


    @availableskills = @characterclass.skills.find(charskilllist)

    puts(@grouplist)


    @availableskills.each do |c|
      puts(c.name)
      puts(c.skillgroup_id)
    end
    respond_to do |format|
      format.js
    end
  end
end