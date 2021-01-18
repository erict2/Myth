module CharactersHelper
  def canEdit(character)
    if (!sheetsLocked() or current_user.usertype == 'Admin') 
      if (Setting.allow_global_reroll) 
        return true
      elsif (@character.events.where('startdate <= ? AND eventtype = ? ', Time.now, 'Adventure Weekend').count) < 1
        return true
      end
    end
  end

  def canLevel(character)
    if (!sheetsLocked())
      last_played_event = lastPlayedEvent(character)
      events_played = character.events.where('startdate < ? and levelingevent = ?', Time.now, true).count
      if (character.user.explogs.where('acquiredate <= ? ', Time.now).sum(:amount) >= expToLevel(character))
        if (last_played_event > character.levelupdate)
          return true
        elsif ((!Setting.one_level_per_game) and (events_played >= character.level))
          return true
        end
      end
    end
  end

  def canBuyProfession(character)
    if (!sheetsLocked() or current_user.usertype == 'Admin')
      last_played_event = lastPlayedEvent(character)
      events_played = character.events.where('startdate < ? and levelingevent = ?', Time.now, true).count
      max_profession_date = character.characterprofessions.maximum('acquiredate')
      if(max_profession_date.nil?)
        max_profession_date = '1900-01-01'.to_date
      end

      if (character.characterprofessions.count < 2)
        # Buy 2 professions your first game
        return true
      elsif (character.characterprofessions.where('acquiredate > ?', last_played_event).count < profsPerEvent(character))
        return true
      elsif ((!Setting.one_level_per_game) and ((events_played * profsPerEvent(character)) + 2 > character.characterprofessions.count))
        return true
      end
    end
  end

  def canRefundSkill(character, characterskill)
    last_played_event = lastPlayedEvent(character)
    events_played = character.events.where('startdate < ?', Time.now).count

    characterskill.skill.skillrequirements.each do |skillreq|
      if (character.skills.exists?(id: skillreq.skill_id) and character.skills.where('skill_id = ?', skillreq.requiredskill_id).count < 2)
        #Required as part of another skill. Don't delete if you only own 1.
        return false
      end
    end

    if ((characterskill.skill.tier == 4) and (character.skills.where('tier = 4').count <= 2) and (character.skills.where('tier = 5').count >= 1))
      #Required as part of Tier 5 pyramid
      return false
    elsif ((characterskill.skill.tier == 4) and (character.skills.where('tier = 4').count <= 3) and (character.skills.where('tier = 6').count >= 1))
      #Required as part of Tier 6 pyramid
      return false
    elsif ((characterskill.skill.tier == 5) and (character.skills.where('tier = 5').count <= 2) and (character.skills.where('tier = 6').count >= 1))
      #Required as part of Tier 6 pyramid
    elsif (current_user.usertype == 'Admin')
      return true
    elsif (@character.events.where('startdate <= ? AND eventtype = ? ', Time.now, 'Adventure Weekend').count < 3)
      #Character has not yet played 3 games
      return true
    elsif last_played_event < characterskill.acquiredate
      #Skill has never been used
      return true
    elsif characterskill.skill.tier == 0
      #Skill has been used and is tier 0
      return false
    elsif character.user.explogs.where('acquiredate <= ? ', Time.now).sum(:amount) < characterskill.skill.tier * 25
      #Player can afford skill
      return true
    end
  end

  def canRefundProfession(character, characterprofession)
    last_played_event = lastPlayedEvent(character)
    events_played = character.events.where('startdate < ?', Time.now).count
    starter_professions = character.characterprofessions.order('characterprofessions.acquiredate asc').first(2)

    characterprofession.profession.professionrequirements.each do |profreq|
      if (character.professions.exists?(id: profreq.profession_id))
        #Required as part of another profession.
        return false
      end
    end

    character.characterprofessions.order('characterprofessions.acquiredate asc').first(2).each do |starter_prof|
      if starter_prof.profession_id == characterprofession.profession_id && character.characterprofessions.count > 2
        # We own more than the novice professions
        return false 
      end
    end

    if  current_user.usertype == 'Admin'
      return true
    end

    if last_played_event < characterprofession.acquiredate
      #Profession has never been used
      return true
    end
  end

  def refundPrice(character, characterskill)
    last_played_event = lastPlayedEvent(character)
    if current_user.usertype == 'Admin'
      return 0
    elsif (@character.events.where('startdate <= ? AND eventtype = ? ', Time.now, 'Adventure Weekend').count < 3)
      #Character has not yet played 3 games
      return 0
    elsif last_played_event < characterskill.acquiredate
      #Skill has never been used
      return 0
    else
      characterskill.skill.tier * 25
    end
  end

  def lastPlayedEvent(character)
    if(character.events.where('startdate < ? AND levelingevent', Time.now).maximum(:startdate).nil?)
      return '1900-01-01'.to_date
    end    
    return character.events.where('startdate < ?', Time.now).maximum(:startdate).to_date
    
  end

  def expToLevel(character)
    if character.level.between?(0,1) 
      return 400
    elsif character.level.between?(2,9) 
      return 500
    elsif character.level.between?(10,12) 
      return 600
    elsif character.level.between?(13,14) 
      return 700
    elsif character.level.between?(15,16) 
      return 800
    elsif character.level.between?(17,18) 
      return 900
    elsif character.level.between?(19,20) 
      return 1000
    end
  end

  def profsPerEvent(character)
    if character.skills.exists?(name: "Artisan's Devotion")
      return 2
    elsif character.skills.exists?(name: "Channel Divinity") and character.deity.name = 'Ixbus'
      return 2
    else
      return 1
    end
  end

  def percentToLevel(character)
    totalXP = (character.user.explogs.where('acquiredate <= ? ', Time.now).sum(:amount).to_f).to_f
      return totalXP / expToLevel(character).to_f * 100.0
  end

  def percentOfCP(character)
    totalCP = ((@character.level * 50) + 50).to_f
    currentCP = ((@character.skills.sum(:tier) * 10)).to_f

    return currentCP / totalCP * 100.0
end
  
end