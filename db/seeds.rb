puts 'Starting Character Classes'
Characterclass.find_or_create_by(name: 'Alchemist', description: 'Alchemist', playeravailable: true)
Characterclass.find_or_create_by(name: 'Artificer', description: 'Artificer', playeravailable: true)
Characterclass.find_or_create_by(name: 'Bard', description: 'Bard', playeravailable: true)
Characterclass.find_or_create_by(name: 'Cleric', description: 'Cleric', playeravailable: true)
Characterclass.find_or_create_by(name: 'Druid', description: 'Druid', playeravailable: true)
Characterclass.find_or_create_by(name: 'Fighter', description: 'Fighter', playeravailable: true)
Characterclass.find_or_create_by(name: 'Paladin', description: 'Paladin', playeravailable: true)
Characterclass.find_or_create_by(name: 'Ranger', description: 'Ranger', playeravailable: true)
Characterclass.find_or_create_by(name: 'Rogue', description: 'Rogue', playeravailable: true)
Characterclass.find_or_create_by(name: 'Runesmith', description: 'Runesmith', playeravailable: true)
Characterclass.find_or_create_by(name: 'Wizard', description: 'Wizard', playeravailable: true)

puts 'Starting Deities'
Deity.find_or_create_by(name: 'Adara', description: 'Adara', playeravailable: true)
Deity.find_or_create_by(name: 'Amitel', description: 'Amitel', playeravailable: true)
Deity.find_or_create_by(name: 'Dedrot', description: 'Dedrot', playeravailable: true)
Deity.find_or_create_by(name: 'Enoon', description: 'Enoon', playeravailable: true)
Deity.find_or_create_by(name: 'Ixbus', description: 'Ixbus', playeravailable: true)
Deity.find_or_create_by(name: 'Naenya', description: 'Naenya', playeravailable: true)
Deity.find_or_create_by(name: 'Ororo', description: 'Ororo', playeravailable: true)
Deity.find_or_create_by(name: 'Ryknos', description: 'Ryknos', playeravailable: true)
Deity.find_or_create_by(name: 'Scandelen', description: 'Scandelen', playeravailable: true)

puts 'Starting Races'
Race.find_or_create_by(name: 'Dale Elf', description: 'Dale Elf', playeravailable: true)
Race.find_or_create_by(name: 'Deep Elf', description: 'Deep Elf', playeravailable: true)
Race.find_or_create_by(name: 'Dwarf', description: 'Dwarf', playeravailable: true)
Race.find_or_create_by(name: 'Goblin', description: 'Goblin', playeravailable: true)
Race.find_or_create_by(name: 'Half Elf', description: 'Half Elf', playeravailable: true)
Race.find_or_create_by(name: 'High Elf', description: 'High Elf', playeravailable: true)
Race.find_or_create_by(name: 'Human', description: 'Human', playeravailable: true)
Race.find_or_create_by(name: 'Suhk', description: 'Suhk', playeravailable: true)
Race.find_or_create_by(name: 'Wildren', description: 'Wildren', playeravailable: true)
Race.find_or_create_by(name: 'Tengu', description: 'Tengu', playeravailable: false)

puts 'Starting Rest Types'
Resttype.find_or_create_by(name: 'Permanent', description: 'Skill may be used as often as you can fulfill the requirements for use or is always active.', playeravailable: true)
Resttype.find_or_create_by(name: 'Short Rest', description: 'Skill may be used once per purchase and is restored after taking a 15 minute break relaxing in an encampment or building.', playeravailable: true)
Resttype.find_or_create_by(name: 'Place of Power', description: 'Skill may be used once per purchase and is restored after taking a 15 minute (short rest) break meditating at a Place of Power.', playeravailable: true)
Resttype.find_or_create_by(name: 'Long Rest', description: 'Skill may be used once per purchase per day and is refreshed at 9am every day.', playeravailable: true)
Resttype.find_or_create_by(name: 'Between Events', description: 'This skill can only be used at Check-In or Checkout but not during the Game.', playeravailable: true)
Resttype.find_or_create_by(name: 'Aura', description: 'You must be a designated Benefactor and be within 10 ft. of the person granting this ability and be conscious to receive the effect. Some Auras may have exceptions.', playeravailable: true)
Resttype.find_or_create_by(name: 'Event', description: 'Skill may only be used per event.', playeravailable: true)
Resttype.find_or_create_by(name: 'Crafting', description: 'This skill may be used as often as the necessary materials and costs can be paid. Some Crafting is only able to be done Between Events. When you learn a skill with the Crafting Tag, you also learn a recipe relevant to the Skill you have purchased.', playeravailable: true)

puts 'Starting Skill Delivery'
Skilldelivery.find_or_create_by(name: 'Crafting', description: 'This skill may be used as often as the necessary materials and costs can be paid. Some Crafting is only able to be done Between Events. When you learn a skill with the Crafting Tag, you also learn a recipe relevant to the Skill you have purchased.', playeravailable: true)
Skilldelivery.find_or_create_by(name: 'Burst', description: 'Skill must be delivered by a handful of packets (Maximum of 5 Packets Thrown). You only take the effect once regardless of the number of packets that strike you.', playeravailable: true)
Skilldelivery.find_or_create_by(name: 'Chain', description: 'To use this skill, you must plant both feet firmly on the ground. You may continue to use this skill until your feet are no longer in the original position, you are hit with damage, or use another skill. Skills and spells will state if it is a Weapon Chain or Packet Chain.', playeravailable: true)
Skilldelivery.find_or_create_by(name: 'Packet', description: 'You must deliver this skill by a packet. The effect of a packet skill with the "Through" keyword is successfully delivered when it strikes a body, clothing, a shield, or a weapon.', playeravailable: true)
Skilldelivery.find_or_create_by(name: 'Touch', description: 'Skill must be delivered to someone making physical contact with a packet. This skill may not be modified to be delivered by burst, chain, or voice.', playeravailable: true)
Skilldelivery.find_or_create_by(name: 'Voice', description: 'Skill affects all individuals within line of sight able to hear it except for the person using the skill. You may not use By My Voice skills while Silenced.', playeravailable: true)
Skilldelivery.find_or_create_by(name: 'Weapon', description: 'Skill must be delivered with a weapon.', playeravailable: true)
Skilldelivery.find_or_create_by(name: 'Knowledge', description: 'Something your character inherently knows', playeravailable: true)

puts 'Starting Skill Groups'
Skillgroup.find_or_create_by(name: 'Basic Open Skills', description: 'Basic Open Skills', playeravailable: true)
Skillgroup.find_or_create_by(name: 'Defense', description: 'Defense', playeravailable: true)
Skillgroup.find_or_create_by(name: 'Shadow', description: 'Shadow', playeravailable: true)
Skillgroup.find_or_create_by(name: 'Weapon', description: 'Weapon', playeravailable: true)
Skillgroup.find_or_create_by(name: 'Healing / Utility', description: 'Healing / Utility', playeravailable: true)
Skillgroup.find_or_create_by(name: 'Defensive', description: 'Defensive', playeravailable: true)
Skillgroup.find_or_create_by(name: 'Offensive', description: 'Offensive', playeravailable: true)

puts 'Starting Skills'
@Resttypes = Resttype.all
@Skilldeliveries = Skilldelivery.all
@Skillgroups = Skillgroup.all

Skill.find_or_create_by(name: 'Apply Pressure', tier: 0, resttype: @Resttypes.find_by(name: 'Permanent'), skilldelivery: @Skilldeliveries.find_by(name: 'Touch'), skillgroup: @Skillgroups.find_by(name: 'Basic Open Skills'), playeravailable: true, description: 'Prop Required: Bandages. RP: Continuously administering first aid with both hands. “Pause your bleed out count until I remove my hands.” This skill will end if you remove your hands, use any other skills, or take damage.')
Skill.find_or_create_by(name: 'Literacy', tier: 0, resttype: @Resttypes.find_by(name: 'Permanent'), skilldelivery: @Skilldeliveries.find_by(name: 'Knowledge'), skillgroup: @Skillgroups.find_by(name: 'Basic Open Skills'), playeravailable: true, description: 'You may read and write in the game.')

