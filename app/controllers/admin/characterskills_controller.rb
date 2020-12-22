class Admin::CharacterskillsController < AdminController
  def new
    @characterskill = Characterskill.new
    @character = Character.find_by(id: params[:character_id])
    cpavailable = ((@character.level * 50) + 50) - (@character.skills.sum(:tier) * 10)
    maxtier = cpavailable / 10

    @character.skills

    charskilllist = []
    Characterclass.find_by(id: @character.characterclass_id).skills.each do |skill|
      @canbuy = true
      if Skillrequirement.exists?(skill: skill.id)
        Skillrequirement.where(skill: skill.id).each do |r|
          if !@character.skills.exists?(id: r.requiredskill_id)
            @canbuy = false
            next
          end
        end
      end
      if skill.resttype.name.in?(['Permanent','Crafting'])
        if @character.skills.exists?(id: skill.id)
          @canbuy = false
          next
        end
      end
      if skill.tier > maxtier
        @canbuy = false
        next
      end  
      if @canbuy
        charskilllist <<  skill.id
      end
    end
    @availableskills = Characterclass.find_by(id: @character.characterclass_id).skills.find(charskilllist)

    respond_to do |format|
      format.js
    end
  end

  def create    
    @characterskill = Characterskill.new(addskill_params)
    puts(@characterskill.skill_id)
    puts(@characterskill.character_id)
    if @characterskill.save!
      redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
    else
      redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
    end
  end

  def destroy
    @characterskill = Characterskill.order('aquiredate desc').find_by(skill_id: params[:id], character_id: params[:character_id])
    @character = Character.find_by(id: params[:character_id])

    if (@character.events.where('startdate < ?', Time.now).maximum(:startdate).nil?) || !(@character.events.where('startdate < ?', Time.now).maximum(:startdate) > @characterskill.aquiredate)
      @characterskill.destroy
      redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
    else
      @explog = Explog.new
      @explog.character_id = @character.id
      @explog.name = 'Skill Refund'
      @explog.aquiredate = Time.now
      @explog.description = 'Exp for refunding: ' + @characterskill.skill.name
      @explog.amount = @characterskill.skill.tier * -25
      @explog.grantedby_id = current_user.id
      @explog.save!
      @characterskill.destroy
      redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
    end    
  end
  
  private
  def addskill_params
    params.require(:characterskill).permit(:skill_id, :character_id)
  end

end