# frozen_string_literal: true

module CharactersHelper
  def canEdit(_character)
    if !sheetsLocked || (current_user.usertype == 'Admin')
      if Setting.allow_global_reroll
        true
      elsif (@character.events.where('startdate <= ? AND eventtype = ? ', Time.now, 'Adventure Weekend').count) < 1
        true
      end
    end
  end

  def canLevel(character)
    unless sheetsLocked
      last_played_event = lastPlayedEvent(character)
      events_played = character.events.where('startdate < ? and levelingevent = ?', Time.now, true).count
      if character.user.explogs.where('acquiredate <= ? ', Time.now).sum(:amount) >= expToLevel(character)
        if last_played_event > character.levelupdate
          true
        elsif !Setting.one_level_per_game && (events_played >= character.level)
          true
        end
      end
    end
  end

  def canBuyProfession(character)
    if !sheetsLocked || (current_user.usertype == 'Admin')
      last_played_event = lastPlayedEvent(character)
      events_played = character.events.where('startdate < ? and levelingevent = ?', Time.now, true).count
      max_profession_date = character.characterprofessions.maximum('acquiredate')
      max_profession_date = '1900-01-01'.to_date if max_profession_date.nil?

      if character.characterprofessions.count < 2
        # Buy 2 professions your first game
        true
      elsif character.characterprofessions.where('acquiredate > ?',
                                                 last_played_event).count < profsPerEvent(character)
        true
      elsif !Setting.one_level_per_game && ((events_played * profsPerEvent(character)) + 2 > character.characterprofessions.count)
        true
      end
    end
  end

  def canRefundSkill(character, characterskill)
    last_played_event = lastPlayedEvent(character)
    events_played = character.events.where('startdate < ?', Time.now).count

    characterskill.skill.skillrequirements.each do |skillreq|
      if character.skills.exists?(id: skillreq.skill_id) && (character.skills.where('skill_id = ?',
                                                                                    skillreq.requiredskill_id).count < 2)
        # Required as part of another skill. Don't delete if you only own 1.
        return false
      end
    end

    if (characterskill.skill.tier == 4) && (character.skills.where('tier = 4').count <= 2) && (character.skills.where('tier = 5').count >= 1)
      # Required as part of Tier 5 pyramid
      false
    elsif (characterskill.skill.tier == 4) && (character.skills.where('tier = 4').count <= 3) && (character.skills.where('tier = 6').count >= 1)
      # Required as part of Tier 6 pyramid
      false
    elsif (characterskill.skill.tier == 5) && (character.skills.where('tier = 5').count <= 2) && (character.skills.where('tier = 6').count >= 1)
      # Required as part of Tier 6 pyramid
    elsif current_user.usertype == 'Admin'
      true
    elsif @character.events.where('startdate <= ? AND eventtype = ? ', Time.now, 'Adventure Weekend').count < 3
      # Character has not yet played 3 games
      true
    elsif last_played_event < characterskill.acquiredate
      # Skill has never been used
      true
    elsif characterskill.skill.tier.zero?
      # Skill has been used and is tier 0
      false
    elsif character.user.explogs.where('acquiredate <= ? ', Time.now).sum(:amount) < characterskill.skill.tier * 25
      # Player can afford skill
      true
    end
  end

  def canRefundProfession(character, characterprofession)
    last_played_event = lastPlayedEvent(character)
    events_played = character.events.where('startdate < ?', Time.now).count
    starter_professions = character.characterprofessions.order('characterprofessions.acquiredate asc').first(2)

    characterprofession.profession.professionrequirements.each do |profreq|
      if character.professions.exists?(id: profreq.profession_id)
        # Required as part of another profession.
        return false
      end
    end

    character.characterprofessions.order('characterprofessions.acquiredate asc').first(2).each do |starter_prof|
      if starter_prof.profession_id == characterprofession.profession_id && character.characterprofessions.count > 2
        # We own more than the novice professions
        return false
      end
    end

    return true if current_user.usertype == 'Admin'

    if last_played_event < characterprofession.acquiredate
      # Profession has never been used
      true
    end
  end

  def refundPrice(character, characterskill)
    last_played_event = lastPlayedEvent(character)
    if current_user.usertype == 'Admin'
      0
    elsif @character.events.where('startdate <= ? AND eventtype = ? ', Time.now, 'Adventure Weekend').count < 3
      # Character has not yet played 3 games
      0
    elsif last_played_event < characterskill.acquiredate
      # Skill has never been used
      0
    else
      characterskill.skill.tier * 25
    end
  end

  def lastPlayedEvent(character)
    if character.events.where('startdate < ? AND levelingevent', Time.now).maximum(:startdate).nil?
      return '1900-01-01'.to_date
    end

    character.events.where('startdate < ?', Time.now).maximum(:startdate).to_date
  end

  def expToLevel(character)
    if character.level.between?(0, 1)
      400
    elsif character.level.between?(2, 9)
      500
    elsif character.level.between?(10, 12)
      600
    elsif character.level.between?(13, 14)
      700
    elsif character.level.between?(15, 16)
      800
    elsif character.level.between?(17, 18)
      900
    elsif character.level.between?(19, 20)
      1000
    end
  end

  def profsPerEvent(character)
    if character.skills.exists?(name: "Artisan's Devotion")
      2
    elsif character.skills.exists?(name: 'Channel Divinity') && (character.deity.name == 'Ixbus')
      2
    else
      1
    end
  end

  def percentToLevel(character)
    totalXP = character.user.explogs.where('acquiredate <= ? ', Time.now).sum(:amount).to_f.to_f
    totalXP / expToLevel(character).to_f * 100.0
  end

  def percentOfCP(_character)
    totalCP = ((@character.level * 50) + 50).to_f
    currentCP = ((@character.skills.sum(:tier) * 10)).to_f

    currentCP / totalCP * 100.0
  end
end
