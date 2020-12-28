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
characterclass.description = 'Alchemist'
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Artificer')
characterclass.description = 'Artificer'
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Bard')
characterclass.description = 'Bard'
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Cleric')
characterclass.description = 'Cleric'
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Druid')
characterclass.description = 'Druid'
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Fighter')
characterclass.description = 'Fighter'
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Paladin')
characterclass.description = 'Paladin'
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Ranger')
characterclass.description = 'Ranger'
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Rogue')
characterclass.description = 'Rogue'
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Runesmith')
characterclass.description = 'Runesmith'
characterclass.playeravailable = true
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Wizard')
characterclass.description = 'Wizard'
characterclass.playeravailable = true
characterclass.save!

puts 'Starting Deities'
deity = Deity.find_or_initialize_by(name: 'Adara')
deity.description = 'Adara'
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Amitel')
deity.description = 'Amitel'
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Dedrot')
deity.description = 'Dedrot'
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Enoon')
deity.description = 'Enoon'
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Ixbus')
deity.description = 'Ixbus'
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Naenya')
deity.description = 'Naenya'
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Ororo')
deity.description = 'Ororo'
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Ryknos')
deity.description = 'Ryknos'
deity.playeravailable = true
deity.save!

deity = Deity.find_or_initialize_by(name: 'Scandelen')
deity.description = 'Scandelen'
deity.playeravailable = true
deity.save!

puts 'Starting Races'
race = Race.find_or_initialize_by(name: 'Dale Elf')
race.description = 'Dale Elf'
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Dwarf')
race.description = 'Dwarf'
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Goblin')
race.description = 'Goblin'
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Half Elf')
race.description = 'Half Elf'
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'High Elf')
race.description = 'High Elf'
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Human')
race.description = 'Human'
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Suhk')
race.description = 'Suhk'
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Wildren')
race.description = 'Wildren'
race.playeravailable = true
race.save!

race = Race.find_or_initialize_by(name: 'Tengu')
race.description = 'Tengu'
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
skillgroup.description = 'Basic Open Skills'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
skillgroup.description = 'Basic Defense Skills'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Shadow')
skillgroup.description = 'Shadow'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Weapon')
skillgroup.description = 'Weapon'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
skillgroup.description = 'Healing / Utility'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
skillgroup.description = 'Defensive Magic'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
skillgroup.description = 'Offensive Magic'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Alchemist')
skillgroup.description = 'Alchemist'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Artificer')
skillgroup.description = 'Artificer'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Bard')
skillgroup.description = 'Bard'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Cleric')
skillgroup.description = 'Cleric'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Druid')
skillgroup.description = 'Druid'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Fighter')
skillgroup.description = 'Fighter'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Paladin')
skillgroup.description = 'Paladin'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Ranger')
skillgroup.description = 'Ranger'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Rogue')
skillgroup.description = 'Rogue'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Runesmith')
skillgroup.description = 'Runesmith'
skillgroup.playeravailable = true
skillgroup.save!

skillgroup = Skillgroup.find_or_initialize_by(name: 'Wizard')
skillgroup.description = 'Wizard'
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
skill.description = 'Target: Unconscious/Bleeding Out Body. RP: Checking the targets Vitals. "Diagnose - <How many Hit Points do you have? / Are you Poisoned? / What is your poison count currently at? / How long before you bleed out? / Are you Dead?>'
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

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Medium Armor Proficiency'), requiredskill: Skill.find_or_initialize_by(name: 'Light Armor Proficiency')).save!

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

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Heavy Armor Proficiency'), requiredskill: Skill.find_or_initialize_by(name: 'Medium Armor Proficiency')).save!

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

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Sneak Attack 2'), requiredskill: Skill.find_or_initialize_by(name: 'Sneak Attack')).save!

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

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Sneak Attack 3'), requiredskill: Skill.find_or_initialize_by(name: 'Sneak Attack 2')).save!

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

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Slash 3'), requiredskill: Skill.find_or_initialize_by(name: 'Slash 2')).save!

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

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Slash 4'), requiredskill: Skill.find_or_initialize_by(name: 'Slash 3')).save!

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

skill = Skill.find_or_initialize_by(name: "Alchemist's Fire")
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Alchemist')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = 'Potion/Bomb Coreless Thrown Weapon or Packet'
skill.incant = 'Fire. Damage 1.'
skill.description = 'Prop Required: Potion/Bomb Coreless Thrown Weapon or Packet - "Fire. Damage 1."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Combine Potions')
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Alchemist')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may take two potions and have them combined into a single bottle. The imbiber would then receive the effect of both potions when drunk. These potions cannot be further combined.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Hurl Potion')
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Alchemist')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may deliver a potion by packet instead of roleplaying drinking the potion as normal. State the effects of the potion and then throw the Packet at your target.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Identify Potion')
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Alchemist')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may open up potions and look at the tag without needing to use it.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Novice Alchemy')
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.skillgroup = Skillgroup.find_by(name: 'Alchemist')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Craft Novice Alchemy Recipes.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Sensitive Palate')
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Alchemist')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you consume a potion that grants you a Heal effect, you may add one to the number of Hit Points restored.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Steady Hand')
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Alchemist')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You do not ruin your potions if attacked while trying to consume them, but cannot consume them while being attacked.'
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



puts ('Adding Previous Events')

event = Event.find_or_initialize_by(name: 'Adventure Weekend - OCT 2018')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2018-10-26'
event.enddate = '2018-10-28'
event.description = ''
event.castcount = nil
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - APR 2019')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2019-04-19'
event.enddate = '2019-04-21'
event.description = ''
event.castcount = nil
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!


event = Event.find_or_initialize_by(name: 'Adventure Weekend - MAY 2019')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2019-05-24'
event.enddate = '2019-05-26'
event.description = ''
event.castcount = nil
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!


event = Event.find_or_initialize_by(name: 'Adventure Weekend - AUG 2019')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2019-08-09'
event.enddate = '2019-08-11'
event.description = ''
event.castcount = nil
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - SEP 2019')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2019-09-20'
event.enddate = '2019-09-22'
event.description = ''
event.castcount = nil
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - NOV 2019')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2019-11-01'
event.enddate = '2019-11-03'
event.description = ''
event.castcount = nil
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!


event = Event.find_or_initialize_by(name: 'Adventure Weekend - MAR 2020')
event.eventtype = 'Adventure Weekend - Go Big'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2020-03-27'
event.enddate = '2020-03-29'
event.description = ''
event.castcount = nil
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - MAY 2020')
event.eventtype = 'Adventure Weekend - Go Big'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2020-05-22'
event.enddate = '2020-05-24'
event.description = ''
event.castcount = nil
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - AUG 2020')
event.eventtype = 'Adventure Weekend - Go Big'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2020-08-14'
event.enddate = '2020-08-16'
event.description = ''
event.castcount = nil
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - OCT 2020')
event.eventtype = 'Adventure Weekend - Go Big'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2020-10-09'
event.enddate = '2020-10-11'
event.description = ''
event.castcount = nil
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - NOV 2020')
event.eventtype = 'Adventure Weekend - Go Big'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2020-11-06'
event.enddate = '2020-11-08'
event.description = ''
event.castcount = nil
event.atdoorcost = 90
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - MAR 2021')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2021-03-26'
event.enddate = '2021-03-28'
event.description = ''
event.castcount = nil
event.atdoorcost = 100
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - MAY 2021')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2021-05-07'
event.enddate = '2021-05-09'
event.description = ''
event.castcount = nil
event.atdoorcost = 100
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - AUG 2021')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2021-08-20'
event.enddate = '2021-08-22'
event.description = ''
event.castcount = nil
event.atdoorcost = 100
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - SEP 2021')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2021-09-22'
event.enddate = '2021-09-26'
event.description = ''
event.castcount = nil
event.atdoorcost = 100
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!

event = Event.find_or_initialize_by(name: 'Adventure Weekend - NOV 2021')
event.eventtype = 'Adventure Weekend'
event.location = '326 Taft Pond Rd, Pomfret, CT'
event.startdate = '2021-11-05'
event.enddate = '2021-11-07'
event.description = ''
event.castcount = nil
event.atdoorcost = 100
event.earlybirdcost = 75
event.eventexp = 300
event.eventexp = 100
event.levelingevent = true
event.save!
