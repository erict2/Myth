puts 'Initial Users'

if !User.where(:email => 'andrew.warzocha@gmail.com').exists?
  user = User.new(
    :firstname => 'Andrew',
    :lastname => 'Warzocha',
    :usertype => 'Admin',
    :email => "andrew.warzocha@gmail.com",
    :password => "123456",
    :password_confirmation => "123456"
  )
  user.skip_confirmation!
  user.save!
end

if !User.where(:email => 'eric@ctfaire.com').exists?
  user = User.new(
    :firstname => 'Eric',
    :lastname => 'Tetreault',
    :usertype => 'Admin',
    :email => "eric@ctfaire.com",
    :password => "123456",
    :password_confirmation => "123456"
  )
  user.skip_confirmation!
  user.save!
end

puts 'Starting Character Classes'
characterclass = Characterclass.find_or_initialize_by(name: 'Alchemist')
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Artificer')
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Bard')
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Cleric')
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Druid')
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Fighter')
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Paladin')
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Ranger')
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Rogue')
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Runesmith')
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Wizard')
characterclass.playeravailable = true
characterclass.save!

puts 'Starting Deities'
deity = Deity.find_or_initialize_by(name: 'Adara')
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Amitel')
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Dedrot')
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Enoon')
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Ixbus')
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Naenya')
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Ororo')
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Ryknos')
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Scandelen')
deity.playeravailable = true
deity.save!

puts 'Starting Races'
race = Race.find_or_initialize_by(name: 'Dale Elf')
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Dwarf')
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Goblin')
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Half Elf')
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'High Elf')
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Human')
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Suhk')
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Wildren')
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Tengu')
race.playeravailable = false
race.save!

puts 'Starting Rest Types'
resttype = Resttype.find_or_initialize_by(name: 'Permanent')
resttype.description = 'Skill may be used as often as you can fulfill the requirements for use or is always active.'
resttype.playeravailable = true
resttype.save!

resttype = Resttype.find_or_initialize_by(name: 'Short Rest')
resttype.description = 'Skill may be used once per purchase and is restored after taking a 15 minute break relaxing in an encampment or building.'
resttype.playeravailable = true
resttype.save!

resttype = Resttype.find_or_initialize_by(name: 'Place of Power')
resttype.description = 'Skill may be used once per purchase and is restored after taking a 15 minute (short rest) break meditating at a Place of Power.'
resttype.playeravailable = true
resttype.save!

resttype = Resttype.find_or_initialize_by(name: 'Long Rest')
resttype.description = 'Skill may be used once per purchase per day and is refreshed at 9am every day.'
resttype.playeravailable = true
resttype.save!

resttype = Resttype.find_or_initialize_by(name: 'Between Events')
resttype.description = 'This skill can only be used at Check-In or Checkout but not during the Game.'
resttype.playeravailable = true
resttype.save!

resttype = Resttype.find_or_initialize_by(name: 'Aura')
resttype.description = 'You must be a designated Benefactor and be within 10 ft. of the person granting this ability and be conscious to receive the effect. Some Auras may have exceptions.'
resttype.playeravailable = true
resttype.save!

resttype = Resttype.find_or_initialize_by(name: 'Event')
resttype.description = 'Skill may only be used per event.'
resttype.playeravailable = true
resttype.save!

resttype = Resttype.find_or_initialize_by(name: 'Crafting')
resttype.description = 'This skill may be used as often as the necessary materials and costs can be paid. Some Crafting is only able to be done Between Events. When you learn a skill with the Crafting Tag, you also learn a recipe relevant to the Skill you have purchased.'
resttype.playeravailable = true
resttype.save!

resttype = Resttype.find_or_initialize_by(name: 'Special')
resttype.description = 'This will vary based on the character'
resttype.playeravailable = true
resttype.save!

puts 'Starting Skill Delivery'

skilldelivery = Skilldelivery.find_or_initialize_by(name: 'Crafting')
skilldelivery.description = 'This skill may be used as often as the necessary materials and costs can be paid. Some Crafting is only able to be done Between Events. When you learn a skill with the Crafting Tag, you also learn a recipe relevant to the Skill you have purchased.'
skilldelivery.playeravailable = true
skilldelivery.save!

skilldelivery = Skilldelivery.find_or_initialize_by(name: 'Burst')
skilldelivery.description = 'Skill must be delivered by a handful of packets (Maximum of 5 Packets Thrown). You only take the effect once regardless of the number of packets that strike you.'
skilldelivery.playeravailable = true
skilldelivery.save!

skilldelivery = Skilldelivery.find_or_initialize_by(name: 'Chain')
skilldelivery.description = 'To use this skill, you must plant both feet firmly on the ground. You may continue to use this skill until your feet are no longer in the original position, you are hit with damage, or use another skill. Skills and spells will state if it is a Weapon Chain or Packet Chain.'
skilldelivery.playeravailable = true
skilldelivery.save!

skilldelivery = Skilldelivery.find_or_initialize_by(name: 'Packet')
skilldelivery.description = 'You must deliver this skill by a packet. The effect of a packet skill with the "Through" keyword is successfully delivered when it strikes a body, clothing, a shield, or a weapon.'
skilldelivery.playeravailable = true
skilldelivery.save!

skilldelivery = Skilldelivery.find_or_initialize_by(name: 'Touch')
skilldelivery.description = 'Skill must be delivered to someone making physical contact with a packet. This skill may not be modified to be delivered by burst, chain, or voice.'
skilldelivery.playeravailable = true
skilldelivery.save!

skilldelivery = Skilldelivery.find_or_initialize_by(name: 'Voice')
skilldelivery.description = 'Skill affects all individuals within line of sight able to hear it except for the person using the skill. You may not use By My Voice skills while Silenced.'
skilldelivery.playeravailable = true
skilldelivery.save!

skilldelivery = Skilldelivery.find_or_initialize_by(name: 'Weapon')
skilldelivery.description = 'Skill must be delivered with a weapon.'
skilldelivery.playeravailable = true
skilldelivery.save!

puts 'Starting Skill Groups'
skillgroup = Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Shadow')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Weapon')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Alchemist')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Artificer')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Bard')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Cleric')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Druid')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Fighter')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Paladin')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Ranger')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Rogue')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Runesmith')
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Wizard')
skillgroup.playeravailable = true
skillgroup.save!

puts 'Starting Class Skill Groups'

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Alchemist')).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Artificer')).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Bard')).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Cleric')).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Druid')).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Fighter')).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Paladin')).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Ranger')).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Rogue')).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Runesmith')).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Wizard')).save!

puts 'Starting Skills'

skill = Skill.find_or_initialize_by(name: 'Apply Pressure')
skill.tier = 0

skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.skillgroup = Skillgroup.find_by(name: 'Basic Open Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = 'Bandages'
skill.incant = 'Pause your bleed out count until I remove my hands.'
skill.description = 'Prop Required: Bandages. RP: Continuously administering first aid with both hands. "Pause your bleed out count until I remove my hands." This skill will end if you remove your hands, use any other skills, or take damage.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Diagnose')
skill.tier = 0
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.skillgroup = Skillgroup.find_by(name: 'Basic Open Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = 'Unconscious/Bleeding Out Body'
skill.prop = nil
skill.incant = 'Diagnose - <How many Hit Points do you have? / Are you Poisoned? / What is your poison count currently at? / How long before you bleed out? / Are you Dead?>'
skill.description = 'Target: Unconscious/Bleeding Out Body. RP: check-ing the targets Vitals. "Diagnose - <How many Hit Points do you have? / Are you Poisoned? / What is your poison count currently at? / How long before you bleed out? / Are you Dead?>'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Literacy')
skill.tier = 0
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Basic Open Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may read and write in the game.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Escape Bonds')
skill.tier = 0
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Basic Open Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = 'Self - Rope Bindings Only.'
skill.prop = nil
skill.incant = 'Cure Binds.'
skill.description = 'Self Only - Target: Rope Bindings Only. RP: Five minutes of struggling to get free. "Cure Binds."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Execute')
skill.tier = 0
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Basic Open Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = 'Unconscious or Immobile Persons Torso.'
skill.prop = 'Weapon or Packet'
skill.incant = 'I execute you 1.I execute you 2. I execute you 3.'
skill.description = 'Target: Unconscious or Immobile Persons Torso. "I execute you 1.I execute you 2. I execute you 3.". If you execute something with an enchanted weapon or spell, state the element it is of. For example: "Air execute 1, Air execute 2, Air execute 3"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Flat')
skill.tier = 0
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Basic Open Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Flat'
skill.description = 'Your weapon does no damage this attack.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Light')
skill.tier = 0
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Basic Open Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = 'Diffused, nonwhite light that is not a Blacklight.'
skill.incant = 'Through Fire, Light'
skill.description = 'This light may be a lantern, a faux torch, or a spell. For the spell version: "Through Fire, Light."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Repair')
skill.tier = 0

skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.skillgroup = Skillgroup.find_by(name: 'Basic Open Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may wield any one-or-two-handed weapon.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Dagger')
skill.tier = 0
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Basic Open Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may carry a dagger as well as your standard weapon. You may not wield both without Dual Wield.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Light Armor Proficiency')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Basic Defense Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may wear armor that falls under the "Light" category.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Medium Armor Proficiency')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Basic Defense Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may wear armor that falls under the "Medium" category.'
skill.save!

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Medium Armor Proficiency'), requiredskill: Skill.find_by(name: 'Light Armor Proficiency')).save!

skill = Skill.find_or_initialize_by(name: 'Shield')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Basic Defense Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may wield a shield.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Heavy Armor Proficiency')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Basic Defense Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may wear armor that falls under the "Heavy" category.'
skill.save!

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Heavy Armor Proficiency'), requiredskill: Skill.find_by(name: 'Medium Armor Proficiency')).save!

skill = Skill.find_or_initialize_by(name: 'First Aid')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.skillgroup = Skillgroup.find_by(name: 'Basic Defense Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = 'Medical Kit'
skill.incant = 'Pause your Bleed Out count. | Heal 1 Hit Points'
skill.description = 'RP: Continuously administering first aid with both hands. "Pause your Bleed Out count" This skill will end if you use any other skills or take damage. After 1 minute of roleplaying this skill continuously, you may call "Heal 1 Hit Points" on your target. Alternatively, you may spend one minute roleplaying binding limbs. After this time, you may cure a single maimed limb.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Hit Points')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Basic Defense Skills')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Gain one Hit Point to your total.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Dash')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Shadow')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = nil
skill.description = 'Resist Slow'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Sneak Attack')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Shadow')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'From Behind'
skill.prop = nil
skill.incant = 'Crit, Damage 1'
skill.description = 'Target: From Behind. "Crit, Damage 1."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Rapid Search')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.skillgroup = Skillgroup.find_by(name: 'Shadow')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'From Behind'
skill.prop = nil
skill.incant = 'Rapid Search 1, Rapid Search 2, Rapid Search 3.'
skill.description = '"Rapid Search 1, Rapid Search 2, Rapid Search 3." The target must immediately turn over anything of value not protected by skills, spells, or items.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Sneak Attack 2')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Shadow')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'From Behind'
skill.prop = nil
skill.incant = 'Crit, Damage 2'
skill.description = 'Target: From Behind. "Crit, Damage 2"'
skill.save!

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Sneak Attack 2'), requiredskill: Skill.find_by(name: 'Sneak Attack')).save!

skill = Skill.find_or_initialize_by(name: 'Silencing Strike')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Shadow')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Torso'
skill.prop = nil
skill.incant = 'Silence, 1 Minute.'
skill.description = 'Target: Torso "Silence, 1 Minute."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Hamstring')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Shadow')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Leg'
skill.prop = nil
skill.incant = 'Slow'
skill.description = 'Target: Leg. "Slow."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Sneak Attack 3')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Shadow')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'From Behind'
skill.prop = nil
skill.incant = 'Crit, Damage 3'
skill.description = 'Target: From Behind. "Crit, Damage 3"'
skill.save!

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Sneak Attack 3'), requiredskill: Skill.find_by(name: 'Sneak Attack 2')).save!

skill = Skill.find_or_initialize_by(name: 'Pick Locks')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Shadow')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may use a self-modified paperclip to pick locks. You may not attempt to open locks without this skill.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Set/Disarm Traps')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Shadow')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'This skill is required to set or disarm a Trap. You must physically disarm the trap to disable it; however, there is no guarantee disarming the trap will be a success. Some traps go off when you attempt to disarm them. You may remove contact poison safely with this skill.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Hidden Stash')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Shadow')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may have a small, clearly-marked pouch no larger than 2" x 4" on your person that is immune to searching. If searched or Rapid Searched, you may inform the searcher they find nothing.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Disengage')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Torso'
skill.prop = nil
skill.incant = 'Disengage'
skill.description = 'Weapon - Short Rest - Target: "Disengage."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Spare Blade')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You can possess (not wield) an additional in-game weapon.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Slash 2')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Damage 2'
skill.description = 'Weapon - Short Rest - "Damage 2."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Slash 2')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Weapon'
skill.prop = nil
skill.incant = 'Disarm'
skill.description = 'Weapon - Short Rest - "Disarm."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Slash 3')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Damage 3'
skill.description = 'Weapon - Short Rest - "Damage 3."'
skill.save!

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Slash 3'), requiredskill: Skill.find_by(name: 'Slash 2')).save!

skill = Skill.find_or_initialize_by(name: 'Strong Grip')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist Disarm'
skill.description = 'Weapon - Short Rest - "Resist Disarm"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Dual Weapons')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You can possess and wield any combination of up to two (2) one-handed weapons in battle. You are allowed to keep backup weapons to replace real damage to weapons, but not to replace weapons that are "broken" in-game.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Maim')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Limb'
skill.prop = nil
skill.incant = 'Maim'
skill.description = 'Weapon - Short Rest - Target: Limb "Maim."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Slash 4')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Damage 4'
skill.description = 'Weapon - Short Rest - "Damage 4"'
skill.save!

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Slash 4'), requiredskill: Skill.find_by(name: 'Slash 3')).save!

skill = Skill.find_or_initialize_by(name: 'Pierce')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Crit, Damage 1'
skill.description = 'Weapon - Short Rest - "Crit, Damage 1"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Archery/Blowgun')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'This skill allows you to use a bow/crossbow or Blowgun in combat. To use this skill, you must go through real-world training and have your equipment examined for safety before each event. You must have both feet planted on the ground when using this skill. Without the proper ability or in-game item, you may not fire a repeating NERF®-style weapon more than once every 10 seconds.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Thrown Weapon')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Allows you to carry and use any number of thrown weapons.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Subdue')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Arm\'s Reach'
skill.prop = nil
skill.incant = 'Prone'
skill.description = 'Packet - Short Rest - "Prone." The target must be close to arms reach'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Bark Skin')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Earth, Bestow one temporary Armor Point.'
skill.description = 'Packet - Short Rest - "Through Earth, Bestow one temporary Armor Point."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Iron Will')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Mind, Bestow Resist Mind.'
skill.description = 'Packet - Short Rest - "Through Mind, Bestow Resist Mind."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Minor Arcane Shield')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Wood, Bestow Resist Arcane.'
skill.description = 'Packet - Short Rest - "Through Wood, Bestow Resist Arcane."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Minor EarthShield')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Wood, Bestow Resist Earth.'
skill.description = 'Packet - Short Rest - "Through Wood, Bestow Resist Earth."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Minor Shield - Resist Missile')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Wood, Bestow Resist Earth.'
skill.description = 'Packet - Short Rest - "Through Earth, Bestow Resist Missile."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Repel Undead')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Undead'
skill.prop = nil
skill.incant = 'Through Spirit, Fear to Undead.'
skill.description = 'Packet - Short Rest - "Through Spirit, Fear to Undead."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Minor Water Shield')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Wood, Bestow Resist Water.'
skill.description = 'Packet - Short Rest - "Through Wood, Bestow Resist Water."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Minor Air Shield')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Wood, Bestow Resist Air.'
skill.description = 'Packet - Short Rest - "Through Wood, Bestow Resist Air."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Pacify')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Mind, pacify, one minute.'
skill.description = 'Packet - Short Rest - "Through Mind, pacify, one minute."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Slow')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Air, Slow, one minute.'
skill.description = 'Packet - Short Rest - "Through Air, Slow, one minute."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Slow Undead')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Undead'
skill.prop = nil
skill.incant = 'Through Spirit, Slow to Undead.'
skill.description = 'Packet - Short Rest - "Through Spirit, Slow to Undead."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Spin')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Undead'
skill.prop = nil
skill.incant = 'Through Air, spin in place five times.'
skill.description = 'Packet - Short Rest - "Through Air, spin in place five times."'

skill = Skill.find_or_initialize_by(name: 'Command: Ignore')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Undead'
skill.prop = nil
skill.incant = 'Through Mind, Ignore me, one minute.'
skill.description = 'Packet - Short Rest - "Through Mind, Ignore me, one minute." If the caster strikes the target, this spell is broken.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Command: Flee')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Undead'
skill.prop = nil
skill.incant = 'Through Mind, fear, one minute.'
skill.description = 'Packet - Short Rest - "Through Mind, fear, one minute."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Minor Fire Shield')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Wood, Bestow Resist Fire.'
skill.description = 'Packet - Short Rest - "Through Wood, Bestow Resist Fire."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Pin')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Air – I pin your left/ right foot to the ground, one minute.'
skill.description = 'Packet - Short Rest - "Through Air – I pin your left/ right foot to the ground, one minute."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Snare to Undead')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Undead'
skill.prop = nil
skill.incant = 'Through Spirit, Snare to Undead.'
skill.description = 'Packet - Short Rest - "Through Spirit, Snare to Undead."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Weakness')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Water, Weakness, one minute.'
skill.description = 'Packet - Short Rest - "Through Water, Weakness, one minute."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Alarm')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Air, Bestow Alarm. If you are killed or knocked unconscious before your next Short Rest, you may shout \'Help! Over here!\' for 10 seconds'
skill.description = 'Packet - Short Rest - "Through Air, Bestow Alarm. If you are killed or knocked unconscious before your next Short Rest, you may shout \'Help! Over here!\' for 10 seconds'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Awaken')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Water – Cure Waylay and Sleep.'
skill.description = 'Packet - Short Rest - "Through Water – Cure Waylay and Sleep.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Carry Companion')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Earth, Bestow you may be carried at full speed, 30 seconds.'
skill.description = 'Packet - Short Rest - "Through Earth, Bestow you may be carried at full speed, 30 seconds." This spell allows a person (Follow contact rules. Do not physically carry) to be carried and move at full speed for 30 seconds.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Cure Minor Wounds')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, I heal you one Hit Point.'
skill.description = 'Packet - Short Rest - "Through Life, I heal you one Hit Point."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Flame Blade')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Fire, Bestow enchant weapon. State \'Fire\' on your next swing.'
skill.description = 'Packet - Short Rest - "Through Fire, Bestow enchant weapon. State \'Fire\' on your next swing."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Sanctify Corpse')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Corpse'
skill.prop = nil
skill.incant = 'Through Life - I prevent this body from being raised as undead.'
skill.description = 'Packet - Short Rest - "Through Life - I prevent this body from being raised as undead."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Cure Light Wounds')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, I heal you two Hit Points.'
skill.description = 'Packet - Short Rest - "Through Life, I heal you two Hit Points."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Delay Poison')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Earth, Bestow, I stop your poison countdown for 5 minutes.'
skill.description = 'Packet - Short Rest - "Through Earth, Bestow, I stop your poison countdown for 5 minutes."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Blessed Weapon')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Spirit, Bestow enchant weapon, state \'Spirit\' on your next swing.'
skill.description = 'Packet - Short Rest - "Through Spirit, Bestow enchant weapon, state \'Spirit\' on your next swing."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Enhance Weapon')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Earth, Bestow Enchant Weapon. State Damage Two on your next attack.'
skill.description = 'Packet - Short Rest - "Through Earth, Bestow Enchant Weapon. State Damage Two on your next attack."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Magic Weapon')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Arcane, Bestow enchant weapon, state \'Arcane\' on your next swing.'
skill.description = 'Packet - Short Rest - "Through Arcane, Bestow enchant weapon, state \'Arcane\' on your next swing."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Frostbrand')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = '"Through Water, Bestow enchant weapon, state \'Water\' on your next swing."'
skill.description = 'Packet - Short Rest - "Through Water, Bestow enchant weapon, state \'Water\' on your next swing."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Free Action')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Arcane, <Pin, Snare, or Bind>'
skill.description = 'Packet - Short Rest - "Through Arcane, <Pin, Snare, or Bind>"'

skill = Skill.find_or_initialize_by(name: 'Empower')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Spirit, Bestow Enchant Weapon, State \'Spirit, Damage Two\' on your next attack.'
skill.description = 'Packet - Short Rest - "Through Spirit, Bestow Enchant Weapon, State \'Spirit, Damage Two\' on your next attack."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Hope\'s Blessing')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, Restore a Tier 1-3 Shadow or Weapon Skill.'
skill.description = 'Packet - Short Rest - "Through Life, Restore a Tier 1-3 Shadow or Weapon Skill."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Dissipate Corpse')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Corpse'
skill.prop = nil
skill.incant = 'Through Water, I end your death count immediately.'
skill.description = 'Packet - Short Rest - "Through Water, I end your death count immediately."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Cure Moderate Wounds')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, I heal you three Hit Points.'
skill.description = 'Packet - Short Rest - "Through Life, I heal you three Hit Points."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Transfer Skill')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Water, I Bestow this Short Rest skill to you, \'State Skill Name and Call.\''
skill.description = 'Packet - Short Rest - "Through Water, I Bestow this Short Rest skill to you, \'State Skill Name and Call.\'" This spell allows you to expend a Short Rest skill you know so someone else can use it. You may not use the skill you transfer for the remainder of the event, nor can it be transferred again. You cannot cast this spell by voice, burst, or chained. You may only have a single transferred skill on you at a time.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Arcane Blast')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Arcane, Damage Two.'
skill.description = 'Packet - Short Rest - "Through Arcane, Damage Two."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Windburn')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Air, Damage Two.'
skill.description = 'Packet - Short Rest - "Through Air, Damage Two."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Magic Stone')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Earth, Damage Two.'
skill.description = 'Packet - Short Rest - "Through Earth, Damage Two."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Flare')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Fire, Damage Two.'
skill.description = 'Packet - Short Rest - "Through Fire, Damage Two."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Frostbite')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Water, Damage Two.'
skill.description = 'Packet - Short Rest - "Through Water, Damage Two."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Spirit Bolt')
skill.tier = 1
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Spirit, Damage Two.'
skill.description = 'Packet - Short Rest - "Through Spirit, Damage Two."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Arcane Storm')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Arcane Damage Three.'
skill.description = 'Packet - Short Rest - "Through Arcane, Damage Three."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Cold Snap')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Water, Damage Three.'
skill.description = 'Packet - Short Rest - "Through Water, Damage Three."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Fire Bolt')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = '"Through Fire, Damage Three.'
skill.description = 'Packet - Short Rest - "Through Fire, Damage Three."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Rock Fall')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Earth, Damage Three.'
skill.description = 'Packet - Short Rest - "Through Earth, Damage Three."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Migraine')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Mind, Damage Three.'
skill.description = 'Packet - Short Rest - "Through Mind, Damage Three."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Flame Wave')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Fire, Damage Four.'
skill.description = 'Packet - Short Rest - "Through Fire, Damage Four."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Break Limb')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Fire, Maim \'Left/Right Arm/Leg\'.'
skill.description = 'Packet - Short Rest - "Through Fire, Maim \'Left/Right Arm/Leg\'"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Flay Mind')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Mind, Damage Four.'
skill.description = 'Packet - Short Rest - "Through Mind, Damage Four."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Bash Undead')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Undead'
skill.prop = nil
skill.incant = 'Through Spirit, Damage Five to Undead.'
skill.description = 'Packet - Short Rest - "Through Spirit, Damage Five to Undead."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Lighting Bolt')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Air, Damage Four.'
skill.description = 'Packet - Short Rest - "Through Air, Damage Four."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Flay Mind')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Wood, Damage Four.'
skill.description = 'Packet - Short Rest - "Through Wood, Damage Four."'
skill.save!

puts('Starting Alchemist')

skill = Skill.find_or_initialize_by(name: "Alchemist's Fire", skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = 'Potion/Bomb Coreless Thrown Weapon or Packet'
skill.incant = 'Fire. Damage 1.'
skill.description = 'Prop Required: Potion/Bomb Coreless Thrown Weapon or Packet - "Fire. Damage 1."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Combine Potions', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may take two potions and have them combined into a single bottle. The imbiber would then receive the effect of both potions when drunk. These potions cannot be further combined.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Hurl Potion', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may deliver a potion by packet instead of roleplaying drinking the potion as normal. State the effects of the potion and then throw the Packet at your target.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Identify Potion', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may open up potions and look at the tag without needing to use it.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Novice Alchemy', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Craft Novice Alchemy Recipes.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Sensitive Palate', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you consume a potion that grants you a Heal effect, you may add one to the number of Hit Points restored.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Steady Hand', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You do not ruin your potions if attacked while trying to consume them, but cannot consume them while being attacked.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Journeyman Alchemy', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Craft Journeyman Alchemy Recipes.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Journeyman Alchemy', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Novice Alchemy', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Lesser Alchemist Flask', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = 'A Stylized Flask or Bottle'
skill.incant = nil
skill.description = 'You may turn in a Novice Potion at Check-In that you are putting into your Flask. You may use that Potion once per Short Rest for the Event.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Personal Stash', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you consume a novice or journeyman potion, you may immediately give the tag to another individual to share the effect.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Refined Palate', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you receive a numerical bonus from potions, you may add an additional one to that number.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Refined Palate', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Sensitive Palate', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Residue', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you miss a target using a Powder or Potion, you may immediately throw that same effect a second time using another packet.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Resist Poison', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = nil
skill.description = 'Resist a Poison Effect.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Resist Potion', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'You may resist the effects of one non-poison potion. State "Resist" after reading the potion tag.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Toxic', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Poison, 60 seconds.'
skill.description = 'When searched, you may expend this skill to call: "Poison, 60 seconds."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Toxic', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Resist Poison', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Augment Potion', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = nil
skill.description = 'You may double all numerical effects of a potion you consume.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Derive Contents', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may turn in a single potion with your crafting form and learn it\'s recipes if you have the skills required to make it.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Endless Decanter', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = 'Stylized Flask or Bottle'
skill.incant = nil
skill.description = 'You may Packet Chain a Potion stored in your Lesser or Greater Alchemist\'s Flask.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Endless Decanter', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Lesser Alchemist Flask', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Enhance Metabolism', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you consume a potion with more than one effect, you may choose to ignore all the negative effects and gain all beneficial effects.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Enhance Metabolism', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Refined Palate', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Greater Alchemist Flask', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = 'A Stylized Flask or Bottle'
skill.incant = nil
skill.description = 'You may turn in a Journeyman Potion at Check-In that you are putting into your Flask. You may use that Potion once per Long Rest.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Greater Alchemist Flask', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Lesser Alchemist Flask', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Master Alchemy', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Craft Master Alchemy Recipes.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Master Alchemy', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Journeyman Alchemy', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Poison Immunity', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'No Effect'
skill.description = '"No Effect" a Poison Effect'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Poison Immunity', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Resist Poison', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Waste Not, Want Not', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you craft two identical items, you produce an additional one'
skill.save!

puts('Starting Artificer')

skill = Skill.find_or_initialize_by(name: 'Artisan\'s Devotion', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may purchase an additional Profession skill each game.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Avoid Trap', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'You may state, "Resist" if you trigger a trap. Triggered area of effect traps can still affect anyone who doesn’t use Avoid Trap.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Breakdown', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may turn in yellow-stickered items, and a crafting form to gain some of the materials used in its construction at the following check-in.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Identify', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may turn in a yellowstickered item to learn the properties of the object. Curses are not revealed with this skill.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Novice Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may craft Novice Enchanting Recipes.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Novice Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Craft Novice Tinkering Recipes. Once per event, you may use this skill to craft a Novice Recipe regardless of profession requirements. All other costs must be paid as normal.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Recharge', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'RP: 5 minutes recharging an item. You may expend one silver piece for a Short Rest charge or one gold piece for a Long Rest charge. You may turn this coin in to the tavern keeper.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Surge', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Burst')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When using an item that allows you to deliver an effect via Packet, you may instead Burst that effect.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Disable Device', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Dispel Charges for the Event'
skill.description = 'RP: 1 minute working on a yellow stickered item: "Dispel Charges for the Event." Place a yellow sticker with an X on the item.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Efficiency', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may expend this skill, instead of spending a Short Rest Charge in an item.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Empower Item', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you have an item attuned to yourself, you may double a numerical effect produced by that item. You may only have one yellowstickered item empowered at any given time. You may change the empowered item at check-in.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Interchangeable Parts', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When crafting a recipe, you may substitute a single component for another component that is the same tier.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Journeyman Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may craft Journeyman Enchanting Recipes.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Journeyman Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer')),
  requiredskill: Skill.find_by(name: 'Novice Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer'))
).save!

skill = Skill.find_or_initialize_by(name: 'Journeyman Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Craft Journeyman Tinkering Recipes. Once per event, you may use this skill to craft a Journeyman Recipe regardless of profession requirements. All other costs must be paid as normal.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Journeyman Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer')),
  requiredskill: Skill.find_by(name: 'Novice Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer'))
).save!

skill = Skill.find_or_initialize_by(name: 'Recalibrate', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you miss a packet delivered effect from an item, you may immediately reuse it.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Use Magic Device', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may ignore class, race, and level restrictions when having items attuned to you.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Greater Efficiency', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may expend this skill, instead of spending a Long Rest Charge in an item.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Master Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may craft Master Enchanting Recipes.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Master Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer')),
  requiredskill: Skill.find_by(name: 'Journeyman Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer'))
).save!

skill = Skill.find_or_initialize_by(name: 'Master Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may craft Master Tinkering Recipes. Once per event, you may use this skill to craft a Master Recipe regardless of profession requirements. All other costs must be paid as normal.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Master Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer')),
  requiredskill: Skill.find_by(name: 'Journeyman Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer'))
).save!

skill = Skill.find_or_initialize_by(name: 'Permanency', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When crafting an item, you may expend three gold pieces or 300 XP for Novice items, six gold pieces or 600 XP for Journeyman items, or ten gold pieces or 1000 XP for Master items. If you pay this cost, the item will become permanent and will no longer require upkeep. This does not include facilities or items made by an architect.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Permanency', skillgroup: Skillgroup.find_by(name: 'Artificer')),
  requiredskill: Skill.find_by(name: 'Master Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer'))
).save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Permanency', skillgroup: Skillgroup.find_by(name: 'Artificer')),
  requiredskill: Skill.find_by(name: 'Master Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer'))
).save!

skill = Skill.find_or_initialize_by(name: 'Reverse Engineer', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may turn in a single yellow-stickered item and a crafting form, to destroy the thing and learn its recipe provided you possess the appropriate skills to craft the item.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Salvo', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When using an item that allows you to deliver an effect via Packet, you may instead Packet Chain that effect.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Soul of the Artificer', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You gain two extra item slots.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Waste Not, Want Not', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you craft two identical items, you produce an additional one.'
skill.save!

puts('Starting Bard')

skill = Skill.find_or_initialize_by(name: 'Toxic', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Poison, 60 seconds.'
skill.description = 'When searched, you may expend this skill to call: "Poison, 60 seconds."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Toxic', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Resist Poison', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Augment Potion', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = nil
skill.description = 'You may double all numerical effects of a potion you consume.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Derive Contents', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may turn in a single potion with your crafting form and learn it\'s recipes if you have the skills required to make it.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Endless Decanter', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = 'Stylized Flask or Bottle'
skill.incant = nil
skill.description = 'You may Packet Chain a Potion stored in your Lesser or Greater Alchemist\'s Flask.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Endless Decanter', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Lesser Alchemist Flask', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Enhance Metabolism', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you consume a potion with more than one effect, you may choose to ignore all the negative effects and gain all beneficial effects.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Enhance Metabolism', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Refined Palate', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Greater Alchemist Flask', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = 'A Stylized Flask or Bottle'
skill.incant = nil
skill.description = 'You may turn in a Journeyman Potion at Check-In that you are putting into your Flask. You may use that Potion once per Long Rest.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Greater Alchemist Flask', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Lesser Alchemist Flask', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Master Alchemy', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Craft Master Alchemy Recipes.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Master Alchemy', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Journeyman Alchemy', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Poison Immunity', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'No Effect'
skill.description = '"No Effect" a Poison Effect'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Poison Immunity', skillgroup: Skillgroup.find_by(name: 'Alchemist')),
  requiredskill: Skill.find_by(name: 'Resist Poison', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
).save!

skill = Skill.find_or_initialize_by(name: 'Waste Not, Want Not', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you craft two identical items, you produce an additional one'
skill.save!

puts('Starting Artificer')

skill = Skill.find_or_initialize_by(name: 'Artisan\'s Devotion', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may purchase an additional Profession skill each game.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Avoid Trap', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'You may state, "Resist" if you trigger a trap. Triggered area of effect traps can still affect anyone who doesn\'t use Avoid Trap.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Breakdown', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may turn in yellow-stickered items, and a crafting form to gain some of the materials used in its construction at the following check-in.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Identify', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may turn in a yellowstickered item to learn the properties of the object. Curses are not revealed with this skill.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Novice Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may craft Novice Enchanting Recipes.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Novice Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Craft Novice Tinkering Recipes. Once per event, you may use this skill to craft a Novice Recipe regardless of profession requirements. All other costs must be paid as normal.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Recharge', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'RP: 5 minutes recharging an item. You may expend one silver piece for a Short Rest charge or one gold piece for a Long Rest charge. You may turn this coin in to the tavern keeper.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Surge', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Burst')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When using an item that allows you to deliver an effect via Packet, you may instead Burst that effect.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Disable Device', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Dispel Charges for the Event'
skill.description = 'RP: 1 minute working on a yellow stickered item: "Dispel Charges for the Event." Place a yellow sticker with an X on the item.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Efficiency', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may expend this skill, instead of spending a Short Rest Charge in an item.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Empower Item', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you have an item attuned to yourself, you may double a numerical effect produced by that item. You may only have one yellowstickered item empowered at any given time. You may change the empowered item at check-in.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Interchangeable Parts', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When crafting a recipe, you may substitute a single component for another component that is the same tier.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Journeyman Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may craft Journeyman Enchanting Recipes.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Journeyman Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer')),
  requiredskill: Skill.find_by(name: 'Novice Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer'))
).save!

skill = Skill.find_or_initialize_by(name: 'Journeyman Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Craft Journeyman Tinkering Recipes. Once per event, you may use this skill to craft a Journeyman Recipe regardless of profession requirements. All other costs must be paid as normal.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Journeyman Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer')),
  requiredskill: Skill.find_by(name: 'Novice Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer'))
).save!

skill = Skill.find_or_initialize_by(name: 'Recalibrate', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you miss a packet delivered effect from an item, you may immediately reuse it.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Use Magic Device', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may ignore class, race, and level restrictions when having items attuned to you.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Greater Efficiency', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may expend this skill, instead of spending a Long Rest Charge in an item.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Master Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may craft Master Enchanting Recipes.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Master Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer')),
  requiredskill: Skill.find_by(name: 'Journeyman Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer'))
).save!

skill = Skill.find_or_initialize_by(name: 'Master Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may craft Master Tinkering Recipes. Once per event, you may use this skill to craft a Master Recipe regardless of profession requirements. All other costs must be paid as normal.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Master Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer')),
  requiredskill: Skill.find_by(name: 'Journeyman Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer'))
).save!

skill = Skill.find_or_initialize_by(name: 'Permanency', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When crafting an item, you may expend three gold pieces or 300 XP for Novice items, six gold pieces or 600 XP for Journeyman items, or ten gold pieces or 1000 XP for Master items. If you pay this cost, the item will become permanent and will no longer require upkeep. This does not include facilities or items made by an architect.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Permanency', skillgroup: Skillgroup.find_by(name: 'Artificer')),
  requiredskill: Skill.find_by(name: 'Master Tinkering', skillgroup: Skillgroup.find_by(name: 'Artificer'))
).save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Permanency', skillgroup: Skillgroup.find_by(name: 'Artificer')),
  requiredskill: Skill.find_by(name: 'Master Enchanting', skillgroup: Skillgroup.find_by(name: 'Artificer'))
).save!

skill = Skill.find_or_initialize_by(name: 'Reverse Engineer', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may turn in a single yellow-stickered item and a crafting form, to destroy the thing and learn its recipe provided you possess the appropriate skills to craft the item.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Salvo', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When using an item that allows you to deliver an effect via Packet, you may instead Packet Chain that effect.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Soul of the Artificer', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You gain two extra item slots.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Waste Not, Want Not', skillgroup: Skillgroup.find_by(name: 'Artificer'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you craft two identical items, you produce an additional one.'
skill.save!

puts('Starting Bard')

skill = Skill.find_or_initialize_by(name: 'Battlefield Ballad', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'While I perform, my Patrons Resist Shatter and Disarm'
skill.description = 'RP: Continued Performance. State "While I perform, my Patrons Resist Shatter and Disarm."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Bolstering Ballad (Movement)', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'To my Patrons, Bestow one temporary armor point'
skill.description = 'RP: One minute Performing. State "To my Patrons, Bestow one temporary armor point."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Cantata of Courage', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'While I perform, my Patrons Resist Fear and Paralysis.'
skill.description = 'RP: Continue Performance. State "While I perform, my Patrons Resist Fear and Paralysis."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Increased Patronage', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = '+2 Patrons. Bards start the game with 2 Patrons.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Mending Madrigal (Movement)', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'To my Patrons, I heal you up to 5 Hit Points'
skill.description = 'RP: One minute of performing. "To my Patrons, I heal you up to 5 Hit Points."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Revelry', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = '"Resist" Waylay or Silence while Performing.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Waylay', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'From behind'
skill.prop = nil
skill.incant = 'Waylay'
skill.description = 'Weapon - Short Rest - Armament: Dagger, Target: From behind. "Waylay."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Well Connected', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Check-in - At check-in, you may collect a list of current event rumors. The number of rumors you receive may vary.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Arcane Air (Movement)', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'To my Patrons – Through Arcane, Bestow enchant weapon. State \'Air\' on your next swing'
skill.description = 'RP: One minute of performing. State "To my Patrons – Through Arcane, Bestow enchant weapon. State \'Air\' on your next swing."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Armored Aria', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Gain +2 Temporary Hit Points when you use a skill that targets "My Patrons."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Footman\'s Finale (Movement)', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'To my patrons, I Bestow you \'Damage X\' on your next swing" X is equal to the number of Patrons currently benefiting from your Bardic Performance.'
skill.description = 'RP: One minute of performing. State, "To my patrons, I Bestow you \'Damage X\' on your next swing" X is equal to the number of Patrons currently benefiting from your Bardic Performance.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Knife Juggler', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may attempt to catch or swat aside thrown weapons with your hands. If you manage to catch the weapon, you may immediately throw it back.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Knife Juggler', skillgroup: Skillgroup.find_by(name: 'Bard')),
  requiredskill: Skill.find_by(name: 'Thrown Weapon', skillgroup: Skillgroup.find_by(name: 'Weapon'))
).save!

skill = Skill.find_or_initialize_by(name: 'Nimble Dancer', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'While you are performing, you are immune to pin, snare, and slow spells. State "Resist" if you are hit with one of these effects.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Shielding Shanty', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'RP: Continued Performance. While I perform, my Patrons Resist uncalled missile attacks.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Solo Act', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'RP: Continued Performance. "While I perform. Sanctuary."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Spare the Dying', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'While I perform, my Patrons pause their death count. You may choose to go to Dedrot\'s Realm at any time'
skill.description = 'RP: Continued Performance. State "While I perform, my Patrons pause their death count. You may choose to go to Dedrot\'s Realm at any time."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Aspiring Composer', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may grant your patrons the benefit of two bardic performances instead of one. When performing a Bardic Performance in this way, you cannot add a movement to your Performance.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Countersong', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'RP: Continued Performance. While I perform, my Patrons Resist [Keyword of your choice].'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Countersong', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Air, Damage 2'
skill.description = 'Packet Chain - "Through Air, Damage 2"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Master Diplomat', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'By my Voice, Through Mind, Pacify.'
skill.description = 'By my Voice, Through Mind, Pacify.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Protection Chorus', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'While I perform, my patrons gain Sanctuary until you move or use skills. State "Shell" to all weapon or spell attacks"'
skill.description = 'RP: Continued Performance. "While I perform, my patrons gain Sanctuary until you move or use skills. State "Shell" to all weapon or spell attacks."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Rondo of Respite (Movement)', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'I restore one expended Long Rest skill'
skill.description = 'RP: One minute of performing. State "I restore one expended Long Rest skill."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Second Wind Sonata (Movement)', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'To my Patrons, restore your Short Rest skills'
skill.description = 'RP: One minute of performing. State "To my Patrons, restore your Short Rest skills."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Spell Juggler', skillgroup: Skillgroup.find_by(name: 'Bard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'If you catch a spell packet, state, "Resist," recite the spell’s incantation, and immediately throw the spell packet. You must recite the original incantation correctly, or this spell fails.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Spell Juggler', skillgroup: Skillgroup.find_by(name: 'Bard')),
  requiredskill: Skill.find_by(name: 'Knife Juggler', skillgroup: Skillgroup.find_by(name: 'Bard'))
).save!

puts('Starting Cleric')

skill = Skill.find_or_initialize_by(name: 'Channel Divinity', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Special')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Consult the Dedicated to a Deity section in the rulebook for the benefits received based on your deity. This skill also allows you to replace the words Life or Spirit with the name of your god. You may do this in all of the spells you know of these alignments.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Cure Disease', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, I cure you of all diseases'
skill.description = '"Through Life, I cure you of all diseases."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Cure Poison', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, I cure you of all poisons'
skill.description = '"Through Life, I cure you of all poisons."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Divine Blast', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Burst')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Burst cast any Mind, Life, or Spirit spell you know that is not a "Touch" spell.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Divine Blessing', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Corpse'
skill.prop = nil
skill.incant = 'Through Spirit, I grant you the divine blessing of <Your Deity>. Inform the barrister in Dedrot’s Realm of your blessing'
skill.description = '"Through Spirit, I grant you the divine blessing of <Your Deity>. Inform the barrister in Dedrot’s Realm of your blessing."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Divine Blessing', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = Skilldelivery.find_by(name: 'Between Events')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may ask your deity a single question, you will receive an answer at the following Check-In. The more closely the question aligns with your deity’s purview, the more information you will be provided with.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Repair Wounds', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, I heal you 5 Hit Points'
skill.description = 'Through Life, I heal you 5 Hit Points.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Tongues', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'By my voice, through mind, we speak the same language for five minutes'
skill.description = '"By my voice, through mind, we speak the same language for five minutes."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Armor of Faith', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = 'Holy Symbol'
skill.incant = 'Through Spirit, Bestow three Temporary Armor'
skill.description = 'Prop Required: Holy Symbol. "Through Spirit, Bestow three Temporary Armor."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Detect Life', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = 'Holy Symbol'
skill.incant = 'By My Voice, Through Life, if you are bleeding out tell me your bleed out count'
skill.description = 'Prop: Holy Symbol "By My Voice, Through Life, if you are bleeding out tell me your bleed out count."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Disciple of Life', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Whenever you cast a healing effect on someone, you also heal that amount. This ability does not work for Empathic Healing.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Divine Inspiration', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Special')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Consult the Dedicated to a Deity section in the rulebook for the benefits received based on your deity.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Channel Divinity', skillgroup: Skillgroup.find_by(name: 'Cleric')),
  requiredskill: Skill.find_by(name: 'Divine Inspiration', skillgroup: Skillgroup.find_by(name: 'Cleric'))
).save!

skill = Skill.find_or_initialize_by(name: 'Poison Shield', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, Bestow "Resist" poison'
skill.description = '"Through Life, Bestow "Resist" poison."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Self-Sacrifice', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, I take any diseases or poison onto myself'
skill.description = '"Through Life, I take any diseases or poison onto myself." You must know what ails the target before you can cast this spell on them. If you take on poison, you need to know where their poison count currently stands and take over from there. You cannot already have the same affliction you are taking. Afflictions received by this spell cannot be resisted or mitigated in any way.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Smite Undead', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Spirit, Damage 10 to Undead'
skill.description = '"Through Spirit, Damage 10 to Undead."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Voice of the Divine', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Voice Cast any Heal effect spell you know that is not a "Touch" spell instead of how it is normally delivered. This skill also allows you to replace the words Mind, Life, or Spirit with the name of your god. You may do this in all of the spells you know of these alignments.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Divine Authority', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Special')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Consult the Dedicated to a Deity section in the rulebook for the benefits received based on your deity.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Divine Intervention', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = 'Holy Symbol'
skill.incant = nil
skill.description = 'At the end of your bleed out count, you awaken with one Hit Point rather than bleeding out and dying. Maimed limbs still require healing to restore them. The Execute skill negates this ability.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Divine Intervention', skillgroup: Skillgroup.find_by(name: 'Cleric')),
  requiredskill: Skill.find_by(name: 'Channel Divinity', skillgroup: Skillgroup.find_by(name: 'Cleric'))
).save!

skill = Skill.find_or_initialize_by(name: 'Divine Shroud', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Through Life, Sanctuary'
skill.description = '"Through Life, Sanctuary."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Final Judgement', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Corpse Only'
skill.prop = nil
skill.incant = 'Through Spirit, Bestow Final Judgement. Inform the barrister in Dedrot’s Realm of your curse'
skill.description = '"Through Spirit, Bestow Final Judgement. Inform the barrister in Dedrot’s Realm of your curse."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Font of Miracles', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Packet Chain - You may Packet Chain any Mind, Life, or Spirit spell you know that is not a "Touch" spell.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Remove Curse', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, Dispel Curse'
skill.description = '"Through Life, Dispel Curse."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Restore Life', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Corpse Only'
skill.prop = nil
skill.incant = 'Through Life, Cure death and heal all Hit Points'
skill.description = '"Through Life, Cure death and heal all Hit Points." This ability will bring a character who is dead (but not yet a spirit) back to life.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Split Healing', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'By touch, you may heal two separate people with a healing spell that restores a set amount of Hit Points. This ability does not include any spell that says "all Hit Points."'
skill.save!












skill = Skill.find_or_initialize_by(name: 'Favored Foe')
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Fighter')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Weapon or Shield. You can choose one type of enemy as a foe you specialize in battling. Once selected, you can not change your Favored Foe type. You may state "Resist" to a called melee weapon skill from this foe type.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Weapon Specialization')
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Fighter')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = nil
skill.description = 'Self Only - Armament Required: Chosen Weapon Style. (One-Handed, Two-Handed, ranged, sword and shield, or two weapons) "Restore a tier 1-3 weapon or shadow skill."'
skill.save!

puts 'Starting Profession Groups'
pg = Professiongroup.find_or_initialize_by(name: 'Collector')
pg.description = 'Collector Professions are used during games to gather resources from fallen creatures or specific areas. Using Collection Professions on NPC\'s does not cost Labor. You must roleplay collecting the resource from the NPC for 30 seconds before calling the skill. Some areas may require a certain amount of Labor or roleplaying to gather a resource from them.'
pg.playeravailable = true
pg.save!

pg = Professiongroup.find_or_initialize_by(name: 'Gathering')
pg.description = 'Gathering Professions are used only during check-in, where you may spend Labor in exchange for components at a rate listed on your Profession cost sheet.'
pg.playeravailable = true
pg.save!

pg = Professiongroup.find_or_initialize_by(name: 'Refining')
pg.description = 'Refining Professions allow you to take resources collected by Gathering Professions and refine them into ingredients suitable for use by the Crafting Professions. These refinements may have additional applications and are made during gameplay or at Checkout.'
pg.playeravailable = true
pg.save!

pg = Professiongroup.find_or_initialize_by(name: 'Crafting')
pg.description = 'Crafting Professions are used during the event or at Checkout. Crafting a recipe requires you to have a physical copy of the recipe, the associated skill, the components listed, and any other special restrictions that may need to be met on your recipe card. With every crafting profession you learn, you receive a random starting recipe, and you will discover more through experimenting with your craft, adventuring, learning from others, or purchasing from merchants.'
pg.playeravailable = true
pg.save!

pg = Professiongroup.find_or_initialize_by(name: 'Enhancement')
pg.description = 'Enhancement Professions serve as a supplemental set of abilities that assist in improving various interactions within the game world by providing additional actions or information.'
pg.playeravailable = true
pg.save!

puts 'Starting Professions'

profession = Profession.find_or_initialize_by(name: 'Novice Coalescer')
profession.description = 'You may state "Novice Coalescing" when searching a creature for a chance to find a Rank 1 Gem.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Coalescer')
profession.description = 'You may state "Journeyman Coalescing" when searching a creature for a chance to find a Rank 2 Gem.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Coalescer'),
  requiredprofession: Profession.find_by(name: 'Novice Coalescer')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Coalescer')
profession.description = 'You may state "Master Coalescing" when searching a creature for a chance to find a Rank 3 Gem.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Coalescer'),
  requiredprofession: Profession.find_by(name: 'Journeyman Coalescer')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Excavator')
profession.description = 'You may state "Novice Excavating" when searching a creature for a chance to find a Rank 1 Ore.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Excavator')
profession.description = 'You may state "Journeyman Excavating" when searching a creature for a chance to find a Rank 2 Ore.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Excavator'),
  requiredprofession: Profession.find_by(name: 'Novice Excavator')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Excavator')
profession.description = 'You may state "Master Excavating" when searching a creature for a chance to find a Rank 3 Ore.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Excavator'),
  requiredprofession: Profession.find_by(name: 'Journeyman Excavator')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Harvester')
profession.description = 'You may state "Novice Harvesting" when searching a creature for a chance to find a Rank 1 Fruit or Flower.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Harvester')
profession.description = 'You may state "Journeyman Harvesting" when searching a creature for a chance to find a Rank 2 Fruit or Flower.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Harvester'),
  requiredprofession: Profession.find_by(name: 'Novice Harvester')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Harvester')
profession.description = 'You may state "Master Harvesting" when searching a creature for a chance to find a Rank 3 Fruit or Flower.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Harvester'),
  requiredprofession: Profession.find_by(name: 'Journeyman Harvester')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Logger')
profession.description = 'You may state "Novice Logging" when searching a creature for a chance to find a Rank 1 Wood.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Logger')
profession.description = 'You may state "Journeyman Logging" when searching a creature for a chance to find a Rank 2 Wood.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Logger'),
  requiredprofession: Profession.find_by(name: 'Novice Logger')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Logger')
profession.description = 'You may state "Master Logging" when searching a creature for a chance to find a Rank 3 Wood.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Logger'),
  requiredprofession: Profession.find_by(name: 'Journeyman Logger')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Skinner')
profession.description = 'You may state "Novice Skinning" when searching a creature for a chance to find a Rank 1 hide, animal, insect, or part.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Skinner')
profession.description = 'You may state "Journeyman Skinning" when searching a creature for a chance to find a Rank 3 hide, animal, insect, or part.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Skinner'),
  requiredprofession: Profession.find_by(name: 'Novice Skinner')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Skinner')
profession.description = 'You may state "Master Skinning" when searching a creature for a chance to find a Rank 3 leather, animal, insect, or part.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Collector')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Skinner'),
  requiredprofession: Profession.find_by(name: 'Journeyman Skinner')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Farmer')
profession.description = 'You may spend 1 Labor at check-in to get 1 Produce or 1 Random Rank 1 Fruit or Flower.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Farmer')
profession.description = 'You may spend 4 Labor at check-in to get 1 Random Rank 2 Fruit or Flower.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Farmer'),
  requiredprofession: Profession.find_by(name: 'Novice Farmer')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Farmer')
profession.description = 'You may spend 8 Labor at check-in to get 1 Random Rank 3 Fruit or Flower.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Farmer'),
  requiredprofession: Profession.find_by(name: 'Journeyman Farmer')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Hunter')
profession.description = 'You may spend 1 Labor at check-in to get 1 Random Rank 1 Hide, Animal, Insect or Part.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Hunter')
profession.description = 'You may spend 4 Labor at check-in to get 1 Random Rank 2 Hide, Animal, Insect or Part.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Hunter'),
  requiredprofession: Profession.find_by(name: 'Novice Hunter')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Hunter')
profession.description = 'You may spend 8 Labor at check-in to get a single Random Rank 3 Hide, Animal, Insect or Part.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Hunter'),
  requiredprofession: Profession.find_by(name: 'Journeyman Hunter')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Lumberjack')
profession.description = 'You may spend 1 Labor at check-in to get 1 Raw Wood.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Lumberjack')
profession.description = 'You may spend 4 Labor at check-in to get 1 Random Rank 2 Wood.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Lumberjack'),
  requiredprofession: Profession.find_by(name: 'Novice Lumberjack')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Lumberjack')
profession.description = 'You may spend 8 Labor at check-in to get 1 Random Rank 3 Wood.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Lumberjack'),
  requiredprofession: Profession.find_by(name: 'Journeyman Lumberjack')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Miner')
profession.description = 'You may spend 1 Labor at check-in to get 1 Raw Glass or 1 Random Rank 1 Ore.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Miner')
profession.description = 'You may spend 4 Labor at check-in to get 1 Random Rank 2 Ore.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Miner'),
  requiredprofession: Profession.find_by(name: 'Novice Miner')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Miner')
profession.description = 'You may spend 8 Labor at check-in to get1 Random Rank 3 Ore.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Miner'),
  requiredprofession: Profession.find_by(name: 'Journeyman Miner')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Panner')
profession.description = 'You may spend 1 Labor at check-in to get 1 Random Lesser Gem.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Panner')
profession.description = 'You may spend 4 Labor at check-in to get 1 Random Raw Gem.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Panner'),
  requiredprofession: Profession.find_by(name: 'Novice Panner')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Panner')
profession.description = 'You may spend 8 Labor at check-in to get 1 Random Gem Cluster.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Gathering')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Panner'),
  requiredprofession: Profession.find_by(name: 'Journeyman Panner')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Butcher')
profession.description = 'You may spend 1 Labor to turn any 1 Animal Component into 1 Meat.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Butcher')
profession.description = 'You may spend 2 Labor to turn any 2 Animal Components into 1 Fat.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Butcher'),
  requiredprofession: Profession.find_by(name: 'Novice Butcher')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Butcher')
profession.description = 'You may spend 3 Labor to turn any 3 Animal Components into 1 Vitriol.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Butcher'),
  requiredprofession: Profession.find_by(name: 'Journeyman Butcher')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Carpenter')
profession.description = 'You may spend 1 Labor to turn any 1 Raw Wood into 1 Lumber.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Carpenter')
profession.description = 'You may spend 4 Labor to turn any 1 Ironwood into 1 Heartwood.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Carpenter'),
  requiredprofession: Profession.find_by(name: 'Novice Carpenter')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Carpenter')
profession.description = 'You may spend 8 Labor to turn any 1 Wood and 1 Crushed Gem into 1 Inlaid Wood of the appropriate type.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Carpenter'),
  requiredprofession: Profession.find_by(name: 'Journeyman Carpenter')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Gemcutter')
profession.description = 'You may spend 1 Labor to turn 1 Lesser Gem into 1 Cabochon Gem of the same Gem type.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Gemcutter')
profession.description = 'You may spend 4 Labor to turn 1 Raw Gem into 1 Round Gem of the same type.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Gemcutter'),
  requiredprofession: Profession.find_by(name: 'Novice Gemcutter')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Gemcutter')
profession.description = 'You may spend 8 Labor to turn 1 Gem Cluster into 1 Trilliant Gem of the same Gem type.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Gemcutter'),
  requiredprofession: Profession.find_by(name: 'Journeyman Gemcutter')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Glassmaker')
profession.description = 'Building Required: Forge. You may spend 1 Labor along with 1 Raw Glass and 1 Charcoal to produce 1 Refined Glass.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Glassmaker')
profession.description = 'Building Required: Forge. You may spend 4 Labor along with 1 Raw Glass and 1 Lead to produce 1 Crystal.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Glassmaker'),
  requiredprofession: Profession.find_by(name: 'Novice Glassmaker')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Glassmaker')
profession.description = 'Building Required: Forge. You may spend 8 Labor along with 1 Crystal and 1 Powdered Gem to produce 1 Infused Crystal of the appropriate type.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Glassmaker'),
  requiredprofession: Profession.find_by(name: 'Journeyman Glassmaker')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Papermaker')
profession.description = 'You may spend 1 Labor to turn 1 Raw Wood or Produce into 1 Parchment. Parchment Special Use: Turn in 1 Parchment after 10 Minutes of Roleplaying to produce a copy of a Novice Recipe you possess.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Papermaker')
profession.description = 'You may spend 4 Labor to turn 1 Ironwood or Rank 2 Flower into 1 Vellum. Vellum Special Use: Turn in 1 Vellum after 10 Minutes of Roleplaying to produce a copy of a Journeyman Recipe you possess.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Papermaker'),
  requiredprofession: Profession.find_by(name: 'Novice Papermaker')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Papermaker')
profession.description = 'You may spend 8 Labor to turn 1 Rank 3 Wood or Flower into 1 Aetherslip. Aetherslip Special Use: Turn in 1 Aetherslip after 10 Minutes of Roleplaying to produce a copy of a Master Recipe you possess.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Papermaker'),
  requiredprofession: Profession.find_by(name: 'Journeyman Papermaker')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Smelter')
profession.description = 'Building Required: Forge. You may spend 1 Labor and 2+ X Wood to produce X Charcoal.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Smelter')
profession.description = 'Building Required: Forge. You may spend 4 Labor and 1 Charcoal and 1 Iron ore to produce 1 Steel Ore.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Smelter'),
  requiredprofession: Profession.find_by(name: 'Novice Smelter')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Smelter')
profession.description = 'Building Required: Forge. You may spend 8 Labor along with 1 Ore and 1 Powered Gem to produce 1 Infused Ore of the appropriate type.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Smelter'),
  requiredprofession: Profession.find_by(name: 'Journeyman Smelter')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Tanner')
profession.description = 'You may spend 1 Labor to turn 1 Hide into 1 Leather.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Tanner')
profession.description = 'You may spend 4 Labor to turn 1 Leather and 1 Fat into 1 Hardened Leather.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Tanner'),
  requiredprofession: Profession.find_by(name: 'Novice Tanner')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Tanner')
profession.description = 'You may spend 8 Labor to turn 1 Fey Skin into 1 Fey Leather.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Tanner'),
  requiredprofession: Profession.find_by(name: 'Journeyman Tanner')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Weaver')
profession.description = 'You may spend 1 Labor to turn 2 Produce into 1 Linen.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Weaver')
profession.description = 'You may spend 4 Labor to turn 2 Orbweavers into 1 Silk.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Weaver'),
  requiredprofession: Profession.find_by(name: 'Novice Weaver')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Weaver')
profession.description = 'You may spend 8 Labor to turn 1 Dreamtendril, 1 Pearl, and 1 Kemzutaten Caterpillar into 1 Dreamcloth.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Refining')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Weaver'),
  requiredprofession: Profession.find_by(name: 'Journeyman Weaver')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Architect')
profession.description = ''
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Architect')
profession.description = ''
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Architect'),
  requiredprofession: Profession.find_by(name: 'Novice Architect')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Architect')
profession.description = ''
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Architect'),
  requiredprofession: Profession.find_by(name: 'Journeyman Architect')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Blacksmith')
profession.description = ''
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Blacksmith')
profession.description = ''
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Blacksmith'),
  requiredprofession: Profession.find_by(name: 'Novice Blacksmith')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Blacksmith')
profession.description = ''
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Blacksmith'),
  requiredprofession: Profession.find_by(name: 'Journeyman Blacksmith')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Brewer')
profession.description = ''
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Brewer')
profession.description = ''
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Brewer'),
  requiredprofession: Profession.find_by(name: 'Novice Brewer')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Brewer')
profession.description = ''
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Brewer'),
  requiredprofession: Profession.find_by(name: 'Journeyman Brewer')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Chef')
profession.description = ''
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Chef')
profession.description = ''
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Chef'),
  requiredprofession: Profession.find_by(name: 'Novice Chef')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Chef')
profession.description = ''
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Chef'),
  requiredprofession: Profession.find_by(name: 'Journeyman Chef')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Glassblower')
profession.description = ''
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Glassblower')
profession.description = ''
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Glassblower'),
  requiredprofession: Profession.find_by(name: 'Novice Glassblower')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Glassblower')
profession.description = ''
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Glassblower'),
  requiredprofession: Profession.find_by(name: 'Journeyman Glassblower')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Lapidary')
profession.description = ''
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Lapidary')
profession.description = ''
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Lapidary'),
  requiredprofession: Profession.find_by(name: 'Novice Lapidary')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Lapidary')
profession.description = ''
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Lapidary'),
  requiredprofession: Profession.find_by(name: 'Journeyman Lapidary')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Leatherworker')
profession.description = ''
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Leatherworker')
profession.description = ''
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Leatherworker'),
  requiredprofession: Profession.find_by(name: 'Novice Leatherworker')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Leatherworker')
profession.description = ''
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Leatherworker'),
  requiredprofession: Profession.find_by(name: 'Journeyman Leatherworker')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Tailor')
profession.description = ''
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Tailor')
profession.description = ''
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Tailor'),
  requiredprofession: Profession.find_by(name: 'Novice Tailor')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Tailor')
profession.description = ''
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Tailor'),
  requiredprofession: Profession.find_by(name: 'Journeyman Tailor')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Trapmaker')
profession.description = ''
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Trapmaker')
profession.description = ''
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Trapmaker'),
  requiredprofession: Profession.find_by(name: 'Novice Trapmaker')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Trapmaker')
profession.description = ''
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Trapmaker'),
  requiredprofession: Profession.find_by(name: 'Journeyman Trapmaker')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Woodworker')
profession.description = ''
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Woodworker')
profession.description = ''
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Woodworker'),
  requiredprofession: Profession.find_by(name: 'Novice Woodworker')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Woodworker')
profession.description = ''
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Crafting')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Woodworker'),
  requiredprofession: Profession.find_by(name: 'Journeyman Woodworker')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Appraiser')
profession.description = 'At check-in, you will receive a list of the general prices of often traded goods. The list will be updated from game to game as estimates fluctuate based on the in-game economy and plot.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Enhancement')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Appraiser')
profession.description = 'At check-in, you will receive a list of the general prices of rare goods. The list will be updated from game to game as estimates fluctuate based on the in-game economy and plot.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Enhancement')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Appraiser'),
  requiredprofession: Profession.find_by(name: 'Novice Appraiser')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Appraiser')
profession.description = 'You will receive information on how to decipher the value code on trade goods that possess such a code.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Enhancement')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Appraiser'),
  requiredprofession: Profession.find_by(name: 'Journeyman Appraiser')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Laborer')
profession.description = 'You gain an additional 4 points of Labor.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Enhancement')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Laborer')
profession.description = 'You gain an additional 4 points of Labor.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Enhancement')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Laborer'),
  requiredprofession: Profession.find_by(name: 'Novice Laborer')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Laborer')
profession.description = 'You gain an additional 4 points of Labor.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Enhancement')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Laborer'),
  requiredprofession: Profession.find_by(name: 'Journeyman Laborer')
).save!

profession = Profession.find_or_initialize_by(name: 'Novice Mender')
profession.description = 'Building Required: Forge. You may spend 5 minutes and 1 Ore, Leather, or Wood of the appropriate type based on the item to either: Restore 1 Armor to all locations of that Armor, or Repair a Broken Weapon/Shield.'
profession.rank = 'Novice'
profession.professiongroup = Professiongroup.find_by(name: 'Enhancement')
profession.playeravailable = true
profession.save!

profession = Profession.find_or_initialize_by(name: 'Journeyman Mender')
profession.description = 'Building Required: Forge. You may spend 5 minutes and 1 Ore, Leather, or Wood of the appropriate type based on the item to either: Restore 2 Armor to all Locations of that Armor, or Repair a Broken Weapon/Shield.'
profession.rank = 'Journeyman'
profession.professiongroup = Professiongroup.find_by(name: 'Enhancement')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Journeyman Mender'),
  requiredprofession: Profession.find_by(name: 'Novice Mender')
).save!

profession = Profession.find_or_initialize_by(name: 'Master Mender')
profession.description = 'Building Required: Forge. You may spend 5 minutes and 1 Ore, Leather, or Wood of the appropriate type based on the item to either: Restore 3 Armor to all Locations of that Armor, or Repair a Broken Weapon/Shield.'
profession.rank = 'Master'
profession.professiongroup = Professiongroup.find_by(name: 'Enhancement')
profession.playeravailable = true
profession.save!

Professionrequirement.find_or_initialize_by(
  profession: Profession.find_by(name: 'Master Mender'),
  requiredprofession: Profession.find_by(name: 'Journeyman Mender')
).save!

puts ('Adding Previous Events')

event = Event.find_or_initialize_by(name: 'Adventure Weekend - OCT 2018')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2018-10-26'
event.enddate = '2018-10-28'
event.description = ''
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - APR 2019')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2019-04-19'
event.enddate = '2019-04-21'
event.description = ''
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!


event = Event.find_or_initialize_by(name: 'Adventure Weekend - MAY 2019')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2019-05-24'
event.enddate = '2019-05-26'
event.description = ''
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!


event = Event.find_or_initialize_by(name: 'Adventure Weekend - AUG 2019')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2019-08-09'
event.enddate = '2019-08-11'
event.description = ''
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - SEP 2019')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2019-09-20'
event.enddate = '2019-09-22'
event.description = ''
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - NOV 2019')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2019-11-01'
event.enddate = '2019-11-03'
event.description = ''
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!


event = Event.find_or_initialize_by(name: 'Adventure Weekend - MAR 2020')
event.eventtype = 'Adventure Weekend - Go Big'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2020-03-27'
event.enddate = '2020-03-29'
event.description = ''
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - MAY 2020')
event.eventtype = 'Adventure Weekend - Go Big'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2020-05-22'
event.enddate = '2020-05-24'
event.description = ''
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - AUG 2020')
event.eventtype = 'Adventure Weekend - Go Big'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2020-08-14'
event.enddate = '2020-08-16'
event.description = ''
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - OCT 2020')
event.eventtype = 'Adventure Weekend - Go Big'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2020-10-09'
event.enddate = '2020-10-11'
event.description = ''
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - NOV 2020')
event.eventtype = 'Adventure Weekend - Go Big'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2020-11-06'
event.enddate = '2020-11-08'
event.description = ''
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - MAR 2021')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2021-03-26'
event.enddate = '2021-03-28'
event.description = ''
event.atdoorcost = 100
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - MAY 2021')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2021-05-07'
event.enddate = '2021-05-09'
event.description = ''
event.atdoorcost = 100
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - AUG 2021')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2021-08-20'
event.enddate = '2021-08-22'
event.description = ''
event.atdoorcost = 100
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - SEP 2021')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2021-09-22'
event.enddate = '2021-09-26'
event.description = ''
event.atdoorcost = 100
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - NOV 2021')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2021-11-05'
event.enddate = '2021-11-07'
event.description = ''
event.atdoorcost = 100
event.earlybirdcost = 75
event.eventexp = 300
event.feedbackexp = 100
event.levelingevent = true
event.save!
