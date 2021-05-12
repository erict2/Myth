# frozen_string_literal: true

puts 'Initial Users'

unless User.where(email: 'andrew.warzocha@gmail.com').exists?
  user = User.new(
    firstname: 'Andrew',
    lastname: 'Warzocha',
    usertype: 'Admin',
    email: 'andrew.warzocha@gmail.com',
    password: '123456',
    password_confirmation: '123456'
  )
  user.skip_confirmation!
  user.save!
end

unless User.where(email: 'eric@ctfaire.com').exists?
  user = User.new(
    firstname: 'Eric',
    lastname: 'Tetreault',
    usertype: 'Admin',
    email: 'eric@ctfaire.com',
    password: '123456',
    password_confirmation: '123456'
  )
  user.skip_confirmation!
  user.save!
end

unless User.where(email: 'rachelp@rachel.com').exists?
  user = User.new(
    firstname: 'Rachel',
    lastname: 'Prue',
    usertype: 'Player',
    email: 'rachelp@rachel.com',
    password: '123456',
    password_confirmation: '123456'
  )
  user.skip_confirmation!
  user.save!
end

puts 'Starting Character Classes'
characterclass = Characterclass.find_or_initialize_by(name: 'Alchemist')
characterclass.playeravailable = true
characterclass.shortdescription = 'Tales handed down to each generation say the Sukh created the art of Alchemy. The masters of this art sought to transmute lead into gold. Most alchemists are nothing more than hedge mages seeking to sap the power of nature. Others are more renowned in the service of powerful lords or kings.'
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Artificer')
characterclass.playeravailable = true
characterclass.shortdescription = 'The Artificer is the ultimate tinkerer and engineer, but that is only the beginning. They use their understanding of the workings of Alchemy, Magic, and Blacksmithing and fuse these into creations, whether wondrous or mundane. One part explorer, one part artist, and one part mad genius, theirs is the path of creation and experimentation.'
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Bard')
characterclass.playeravailable = true
characterclass.shortdescription = 'A good Bard can be the backbone of an adventuring party, inspiring courage and protection from the sidelines that can turn the tide of a battle. Adventure is where Bards find their muse to inspire their poetry and song - whether real or embellished. The more they perform, the more famous they seem to become.'
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Cleric')
characterclass.playeravailable = true
characterclass.shortdescription = 'Divine magic is said to be the power of the gods that flows through the world. Clerics are the vessels able to tap into that power and perform incredible feats and miracles. The most devout can harness this potent energy as a reward for their unquestioning faith. With it, they can help or harm as their deity so wishes.'
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Druid')
characterclass.playeravailable = true
characterclass.shortdescription = 'They are the guardians of the wilds who acquire mystical powers from nature and their deity. The druids seek forest tranquility to commune with nature and become closer to their deity. Many druids remain neutral with the battles fought by others, allowing nature to take its course. The well-being of the forest is vital to druids who understand the need for a balance between nature and men'
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Fighter')
characterclass.playeravailable = true
characterclass.shortdescription = 'Each of the scars of battle tells a story etched by the weapons that created them. Nobody understands this more than Fighters. These elite warriors are well versed in the art of weaponry and martial arts. Anyone can swing a sword or hide behind a shield. Only a real Fighter has solved the riddle of steel and uses it to master battle.'
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Paladin')
characterclass.playeravailable = true
characterclass.shortdescription = 'The noble Paladin is a watchful hero and a sword for truth. They are heroes sworn to protect the meek and downtrodden. Paladins focus on different aspects of their cause based on the will of the gods. Although most paladins are devoted to good gods, their power comes from a commitment to justice rather than from the gods themselves.'
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Ranger')
characterclass.playeravailable = true
characterclass.shortdescription = 'Some believe their homes are safe, thanks to the efforts of the town guard. Those who call the forest home understand that Rangers are often the first line of defense. These silent soldiers protect the outskirts of civilization from the monsters and villains that plague the wood. Rangers are masters of stealth and camouflage, ambushing prey as silently as possible. There are things that go bump in the night and Rangers are the ones who bump back.'
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Rogue')
characterclass.playeravailable = true
characterclass.shortdescription = 'The masters of the shadows walk silently among us as passersby in the streets of nearly every major town and city in Hyraeth. Many are the epitome of their trade working for a local thieves\' guild or crime family as thugs, burglars, and even assassins. But not all rogues spend their lives in the shadows. Some choose to use their highly-trained skills to help others as locksmiths, spies, and in other jobs where stealth and discretion are essential skills.'
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Runesmith')
characterclass.playeravailable = true
characterclass.shortdescription = 'As a lost art, you could once count the number of practicing Runesmiths in Hyreath on one hand. Working with family or close friends, the modern Runesmith carries on the craft through practices handed down by timeless tradition. Runesmiths work their magic by binding runes with various objects to create enchanted items.'
characterclass.save!

characterclass = Characterclass.find_or_initialize_by(name: 'Wizard')
characterclass.playeravailable = true
characterclass.shortdescription = 'The life of a wizard is anything but typical as you explore "the weave" of magic that permeates all things. You are one of the elite few who can tap into the unseen energies of the world and convert them into something useful.'
characterclass.save!

puts 'Starting Deities'
deity = Deity.find_or_initialize_by(name: 'Adara')
deity.playeravailable = true
deity.shortdescription = 'Adara is the goddess of justice and fairness. Her followers represent the inner light of Hyraeth, earning all that she rewards through their devotions and tenets. Adara promises her followers their day in the sun, lighting the way towards glory, triumph, and truth.'
deity.save!

deity = Deity.find_or_initialize_by(name: 'Amitel')
deity.playeravailable = true
deity.shortdescription = 'Amitel is studious and reflective. He seeks to discover the secrets of the Arcane — the tenuous magic that permeates our world, and that gave birth to him. Prone to talking to himself and suddenly shouting out revelations, Amitel bends Arcane energy to his will.'
deity.save!

deity = Deity.find_or_initialize_by(name: 'Dedrot')
deity.playeravailable = true
deity.shortdescription = 'Dedrot is the guardian of the dead represented by the number five for the Five Fingers of Dedrot. Despite what some may believe, Dedrot has the highest disdain for necromancy. The grander Temples consider Dedrot to be without gender and refer to the deity with neutral pronouns. Some races are known to depict or refer to Dedrot otherwise. Dale Elves describe Dedrot as a man and Enoon\'s counterpart. Among the Sukh, the deity\'s gender varies based on your caravan.'
deity.save!

deity = Deity.find_or_initialize_by(name: 'Enoon')
deity.playeravailable = true
deity.shortdescription = 'All nature is a gift from Enoon, from lush forests and wilds of wonder to the succulents and vegetation of The Scorched Wastes. Ororo provides water, but Enoon gives life to the rivers and streams and other elemental habitats. Enoon is life but remains neutral in the affairs of living things.'
deity.save!

deity = Deity.find_or_initialize_by(name: 'Ixbus')
deity.playeravailable = true
deity.shortdescription = 'Ixbus is competitive, ambitious, and intelligent, but also takes great joy in spreading gifts to their followers. The devout show their homage in many different ways, but most will have a shrine in their homes and a representation of Ixbus in their workplace. The pious toss a coin into a well to catch the attention of Ixbus, hoping that the prayer will be heard.'
deity.save!

deity = Deity.find_or_initialize_by(name: 'Naenya')
deity.playeravailable = true
deity.shortdescription = 'Naenya holds the sword to her sister\'s scales. She, too, is a goddess of justice. While Adara seeks to learn the truth, Naenya is there to carry out the sentence. It would be easy to dismiss Naenya as a cruel goddess; however, she tempers judgment with mercy, beyond the cold dictates of the law. Naenya is the goddess of a different kind of truth. The truth within the heart and mind, hidden below the surface and learned through intuition rather than objectivity.'
deity.save!

deity = Deity.find_or_initialize_by(name: 'Ororo')
deity.playeravailable = true
deity.shortdescription = 'At the creation of the world, Ororo was born, sleeping beneath the ocean. In his dreams, he shaped the realms over the millennia. When other gods first laid their feet upon his land, Ororo awoke, furious that others had used his creation. Enoon, the goddess of Nature, greeted him warmly and invited him to delight in their work. In that instant, he quieted his rage for the moment. However, his legendary anger remained very much a part of him.'
deity.save!

deity = Deity.find_or_initialize_by(name: 'Ryknos')
deity.playeravailable = true
deity.shortdescription = 'May look at war with distaste, but to the followers of Ryknos, it is a means to an end. Some believe that Naenya, one of the twin goddesses, created Ryknos to prevent everlasting peace from upsetting the natural balance of life in Hyraeth.'
deity.save!

deity = Deity.find_or_initialize_by(name: 'Scandelen')
deity.playeravailable = true
deity.shortdescription = 'Every festival, every work of art, and every song is a supplication to Scandelen. They dissolve rivalries between the other deities, by merely telling jokes or playing pranks upon them: their faithful follow this example. Revelry is their universal bond, and when it comes to appreciating life at the moment, their followers not only practice this but encourage others to do so as well, finding beauty and joy in all things.'
deity.save!

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

skilldelivery = Skilldelivery.find_or_initialize_by(name: 'Aura')
skilldelivery.description = 'You must be a designated Benefactor and be within 10 ft. of the person granting this ability and be conscious to receive the effect. Some Auras may have exceptions.'
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

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Alchemist'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Alchemist')
).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Artificer'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Artificer')
).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Bard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Bard')
).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Cleric'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Cleric')
).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Druid'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Druid')
).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Fighter'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Fighter')
).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Paladin'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Paladin')
).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Ranger'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Ranger')
).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Rogue'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Rogue')
).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Runesmith'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Runesmith')
).save!

characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Open Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Basic Defense Skills')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Shadow')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Weapon')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Healing / Utility')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Defensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Offensive Magic')
).save!
characterclassskillgroup = Characterclassskillgroup.find_or_initialize_by(
  characterclass: Characterclass.find_by(name: 'Wizard'), skillgroup: Skillgroup.find_or_initialize_by(name: 'Wizard')
).save!

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
skill.incant = 'Pause your bleed out count until I remove my hands'
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
skill.incant = 'Cure Binds'
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
skill.incant = 'I execute you 1.I execute you 2. I execute you 3'
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
skill.skilldelivery = nil
skill.skillgroup = Skillgroup.find_by(name: 'Basic Open Skills')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = 'Weapon or Armor'
skill.prop = nil
skill.incant = 'Restore 1 point of Armor'
skill.description = 'Resource Needed: Two Iron Ore or Two Leather Scrap per use on metal armor or leather/ fur armor respectively. Location Specific: Forge. Target: Weapon or Armor. RP: 10 minutes repairing armor or fixing a weapon. "Restore 1 point of Armor."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Unskilled Weapon Usage')
skill.tier = 0
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
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

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Medium Armor Proficiency'),
                                       requiredskill: Skill.find_by(name: 'Light Armor Proficiency')).save!

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

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Heavy Armor Proficiency'),
                                       requiredskill: Skill.find_by(name: 'Medium Armor Proficiency')).save!

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
skill.incant = 'Rapid Search 1, Rapid Search 2, Rapid Search 3'
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

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Sneak Attack 2'),
                                       requiredskill: Skill.find_by(name: 'Sneak Attack')).save!

skill = Skill.find_or_initialize_by(name: 'Silencing Strike')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.skillgroup = Skillgroup.find_by(name: 'Shadow')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Torso'
skill.prop = nil
skill.incant = 'Silence, 1 Minute'
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

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Sneak Attack 3'),
                                       requiredskill: Skill.find_by(name: 'Sneak Attack 2')).save!

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

skill = Skill.find_or_initialize_by(name: 'Disarm')
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

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Slash 3'),
                                       requiredskill: Skill.find_by(name: 'Slash 2')).save!

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

Skillrequirement.find_or_initialize_by(skill: Skill.find_by(name: 'Slash 4'),
                                       requiredskill: Skill.find_by(name: 'Slash 3')).save!

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
skill.description = '"Prone." The target must be close to arms reach'
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
skill.incant = 'Through Earth, Bestow one temporary Armor Point'
skill.description = '"Through Earth, Bestow one temporary Armor Point."'
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
skill.incant = 'Through Mind, Bestow Resist Mind'
skill.description = '"Through Mind, Bestow Resist Mind."'
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
skill.incant = 'Through Wood, Bestow Resist Arcane'
skill.description = '"Through Wood, Bestow Resist Arcane."'
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
skill.incant = 'Through Wood, Bestow Resist Earth'
skill.description = '"Through Wood, Bestow Resist Earth."'
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
skill.incant = 'Through Wood, Bestow Resist Earth'
skill.description = '"Through Earth, Bestow Resist Missile."'
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
skill.incant = 'Through Spirit, Fear to Undead'
skill.description = '"Through Spirit, Fear to Undead."'
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
skill.incant = 'Through Wood, Bestow Resist Water'
skill.description = '"Through Wood, Bestow Resist Water."'
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
skill.incant = 'Through Wood, Bestow Resist Air'
skill.description = '"Through Wood, Bestow Resist Air."'
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
skill.incant = 'Through Mind, pacify, one minute'
skill.description = '"Through Mind, pacify, one minute."'
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
skill.incant = 'Through Air, Slow, one minute'
skill.description = '"Through Air, Slow, one minute."'
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
skill.incant = 'Through Spirit, Slow to Undead'
skill.description = '"Through Spirit, Slow to Undead."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Spin')
skill.tier = 2
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Air, spin in place five times'
skill.description = '"Through Air, spin in place five times."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Command: Ignore')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Defensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Undead'
skill.prop = nil
skill.incant = 'Through Mind, Ignore me, one minute'
skill.description = '"Through Mind, Ignore me, one minute." If the caster strikes the target, this spell is broken.'
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
skill.incant = 'Through Mind, fear, one minute'
skill.description = '"Through Mind, fear, one minute."'
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
skill.incant = 'Through Wood, Bestow Resist Fire'
skill.description = '"Through Wood, Bestow Resist Fire."'
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
skill.incant = 'Through Air – I pin your left/ right foot to the ground, one minute'
skill.description = '"Through Air – I pin your left/ right foot to the ground, one minute."'
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
skill.incant = 'Through Spirit, Snare to Undead'
skill.description = '"Through Spirit, Snare to Undead."'
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
skill.incant = 'Through Water, Weakness, one minute'
skill.description = '"Through Water, Weakness, one minute."'
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
skill.description = '"Through Air, Bestow Alarm. If you are killed or knocked unconscious before your next Short Rest, you may shout \'Help! Over here!\' for 10 seconds'
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
skill.incant = 'Through Water – Cure Waylay and Sleep'
skill.description = '"Through Water – Cure Waylay and Sleep.'
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
skill.incant = 'Through Earth, Bestow you may be carried at full speed, 30 seconds'
skill.description = '"Through Earth, Bestow you may be carried at full speed, 30 seconds." This spell allows a person (Follow contact rules. Do not physically carry) to be carried and move at full speed for 30 seconds.'
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
skill.incant = 'Through Life, I heal you one Hit Point'
skill.description = '"Through Life, I heal you one Hit Point."'
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
skill.incant = 'Through Fire, Bestow enchant weapon. State \'Fire\' on your next swing'
skill.description = '"Through Fire, Bestow enchant weapon. State \'Fire\' on your next swing."'
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
skill.incant = 'Through Life - I prevent this body from being raised as undead'
skill.description = '"Through Life - I prevent this body from being raised as undead."'
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
skill.incant = 'Through Life, I heal you two Hit Points'
skill.description = '"Through Life, I heal you two Hit Points."'
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
skill.incant = 'Through Earth, Bestow, I stop your poison countdown for 5 minutes'
skill.description = '"Through Earth, Bestow, I stop your poison countdown for 5 minutes."'
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
skill.incant = 'Through Spirit, Bestow enchant weapon, state \'Spirit\' on your next swing'
skill.description = '"Through Spirit, Bestow enchant weapon, state \'Spirit\' on your next swing."'
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
skill.incant = 'Through Earth, Bestow Enchant Weapon. State Damage Two on your next attack'
skill.description = '"Through Earth, Bestow Enchant Weapon. State Damage Two on your next attack."'
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
skill.incant = 'Through Arcane, Bestow enchant weapon, state \'Arcane\' on your next swing'
skill.description = '"Through Arcane, Bestow enchant weapon, state \'Arcane\' on your next swing."'
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
skill.description = '"Through Water, Bestow enchant weapon, state \'Water\' on your next swing."'
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
skill.incant = 'Through Arcane, < Pin, Snare, or Bind >'
skill.description = '"Through Arcane, < Pin, Snare, or Bind >"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Empower')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Healing / Utility')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Spirit, Bestow Enchant Weapon, State \'Spirit, Damage Two\' on your next attack'
skill.description = '"Through Spirit, Bestow Enchant Weapon, State \'Spirit, Damage Two\' on your next attack."'
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
skill.incant = 'Through Life, Restore a Tier 1-3 Shadow or Weapon Skill'
skill.description = '"Through Life, Restore a Tier 1-3 Shadow or Weapon Skill."'
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
skill.incant = 'Through Water, I end your death count immediately'
skill.description = '"Through Water, I end your death count immediately."'
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
skill.incant = 'Through Life, I heal you three Hit Points'
skill.description = '"Through Life, I heal you three Hit Points."'
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
skill.description = '"Through Water, I Bestow this Short Rest skill to you, \'State Skill Name and Call.\'" This spell allows you to expend a Short Rest skill you know so someone else can use it. You may not use the skill you transfer for the remainder of the event, nor can it be transferred again. You cannot cast this spell by voice, burst, or chained. You may only have a single transferred skill on you at a time.'
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
skill.incant = 'Through Arcane, Damage Two'
skill.description = '"Through Arcane, Damage Two."'
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
skill.incant = 'Through Air, Damage Two'
skill.description = '"Through Air, Damage Two."'
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
skill.incant = 'Through Earth, Damage Two'
skill.description = '"Through Earth, Damage Two."'
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
skill.incant = 'Through Fire, Damage Two'
skill.description = '"Through Fire, Damage Two."'
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
skill.incant = 'Through Water, Damage Two'
skill.description = '"Through Water, Damage Two."'
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
skill.incant = 'Through Spirit, Damage Two'
skill.description = '"Through Spirit, Damage Two."'
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
skill.incant = 'Through Arcane Damage Three'
skill.description = '"Through Arcane, Damage Three."'
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
skill.incant = 'Through Water, Damage Three'
skill.description = '"Through Water, Damage Three."'
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
skill.incant = '"Through Fire, Damage Three'
skill.description = '"Through Fire, Damage Three."'
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
skill.incant = 'Through Earth, Damage Three'
skill.description = '"Through Earth, Damage Three."'
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
skill.incant = 'Through Mind, Damage Three'
skill.description = '"Through Mind, Damage Three."'
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
skill.incant = 'Through Fire, Damage Four'
skill.description = '"Through Fire, Damage Four."'
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
skill.incant = 'Through Fire, Maim \'Left/Right Arm/Leg\''
skill.description = '"Through Fire, Maim \'Left/Right Arm/Leg\'"'
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
skill.incant = 'Through Mind, Damage Four'
skill.description = '"Through Mind, Damage Four."'
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
skill.incant = 'Through Spirit, Damage Five to Undead'
skill.description = '"Through Spirit, Damage Five to Undead."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Lightning Bolt')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Air, Damage Four'
skill.description = '"Through Air, Damage Four."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Sliver')
skill.tier = 3
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.skillgroup = Skillgroup.find_by(name: 'Offensive Magic')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Wood, Damage Four'
skill.description = '"Through Wood, Damage Four."'
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
skill.incant = 'Fire. Damage 1'
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
skill.incant = 'Poison, 60 seconds'
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

skill = Skill.find_or_initialize_by(name: 'Toxic', skillgroup: Skillgroup.find_by(name: 'Alchemist'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Poison, 60 seconds'
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
skill.incant = 'While I perform, my Patrons Resist Fear and Paralysis'
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
skill.incant = 'To my patrons, I Bestow you \'Damage X\' on your next swing" X is equal to the number of Patrons currently benefiting from your Bardic Performance'
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
skill.incant = 'By my Voice, Through Mind, Pacify'
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
skill.description = 'If you catch a spell packet, state, "Resist," recite the spell\'s incantation, and immediately throw the spell packet. You must recite the original incantation correctly, or this spell fails.'
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
skill.incant = 'Through Spirit, I grant you the divine blessing of <Your Deity>. Inform the barrister in Dedrot\'s Realm of your blessing'
skill.description = '"Through Spirit, I grant you the divine blessing of <Your Deity>. Inform the barrister in Dedrot\'s Realm of your blessing."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Oracle', skillgroup: Skillgroup.find_by(name: 'Cleric'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = Skilldelivery.find_by(name: 'Between Events')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may ask your deity a single question, you will receive an answer at the following Check-In. The more closely the question aligns with your deity\'s purview, the more information you will be provided with.'
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
  skill: Skill.find_by(name: 'Divine Inspiration', skillgroup: Skillgroup.find_by(name: 'Cleric')),
  requiredskill: Skill.find_by(name: 'Channel Divinity', skillgroup: Skillgroup.find_by(name: 'Cleric'))
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

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Divine Authority', skillgroup: Skillgroup.find_by(name: 'Cleric')),
  requiredskill: Skill.find_by(name: 'Divine Inspiration', skillgroup: Skillgroup.find_by(name: 'Cleric'))
).save!

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
skill.incant = 'Through Spirit, Bestow Final Judgement. Inform the barrister in Dedrot\'s Realm of your curse'
skill.description = '"Through Spirit, Bestow Final Judgement. Inform the barrister in Dedrot\'s Realm of your curse."'
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

puts('Starting Druid')

skill = Skill.find_or_initialize_by(name: 'Bind', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Air, I bind your arms to your side for five minutes'
skill.description = '"Through Air, I bind your arms to your side for five minutes."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Cure Disease', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, I cure you of all diseases'
skill.description = '"Through Life, I cure you of all diseases."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Cure Poison', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, I cure you of all poisons'
skill.description = '"Through Life, I cure you of all poisons."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Elemental Echo', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Burst')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Burst cast a single spell you know that possesses the Cure or Bestow
Keyword.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Nature\'s Remedy', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Heal 5 Hit Points'
skill.description = 'Deep Woods Only. RP: 1 minute looking for suitable herbs. "Heal 5 Hit Points."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Tongues', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'By Voice, through Mind, we speak the same language for five minutes'
skill.description = '"By Voice, through Mind, we speak the same language for five minutes."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Totemic Gift', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Special')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Consult the Totem Chart for your specific benefit.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Snare', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Air, Snare five minutes'
skill.description = '"Through Air, Snare five minutes."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Drink of the Lifeblood', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you successfully Execute a non-Humanoid, Heal 1 to self.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Elemental Shield', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = '"Resist" an effect that is elementally aligned (Water, Fire, Earth, Air, or Wood).'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Mending Vines', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = '"Through Earth, I Repair your <weapon/shield>, for the Battle."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Mending Vines', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'By Voice, Through mind, pacify to beasts, 1 minute'
skill.description = '"By Voice, Through mind, pacify to beasts, 1 minute."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Nature\'s Blight', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Burst')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, Disease'
skill.description = '"Through Life, Disease."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Nature\'s Voice', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may cast a single spell you know by voice that possesses the Cure or Bestow'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Poison Shield', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, Bestow "Resist" poison'
skill.description = '"Through Life, Bestow "Resist" poison".'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Woodland Stride', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Deep Woods Only. "Resist" to Pin, Snare, and Slow.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Pestilence', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, Weakness'
skill.description = '"Through Life, Weakness."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Petrify', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Earth, paralyze, 1 minute'
skill.description = '"Through Earth, paralyze, 1 minute."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Spell Penetration', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may immediately recast the same spell at a target that just resisted it.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'State of Stone', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Through Earth, Sanctuary'
skill.description = '"Through Earth, Sanctuary."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Sting', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, Poison 60 Seconds'
skill.description = '"Through Life, Poison 60 Seconds!"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Totemic Blessing', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Special')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Consult the Totem Chart for your specific benefit'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Totemic Blessing', skillgroup: Skillgroup.find_by(name: 'Druid')),
  requiredskill: Skill.find_by(name: 'Totemic Gift', skillgroup: Skillgroup.find_by(name: 'Druid'))
).save!

skill = Skill.find_or_initialize_by(name: 'Totemic Protection', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = 'Totem'
skill.incant = nil
skill.description = 'As long as your Druidic Totem is visibly worn, at the end of a Short Rest, you gain 4 Temporary Armor.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Wild Echo', skillgroup: Skillgroup.find_by(name: 'Druid'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may Packet Chain a single spell that possesses the Cure or Bestow'
skill.save!

puts('Starting Fighter')

skill = Skill.find_or_initialize_by(name: 'Chilling Blow', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Fear'
skill.description = '"Fear."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Diehard', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'While in Bleedout only - "Resist" "Death" for the next five minutes.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Favored Foe', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Weapon or Shield. You can choose one type of enemy as a foe you specialize in battling. Once selected, you can not change your Favored Foe type. You may state "Resist" to a called melee weapon skill from this foe type.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Fearless', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = '"Resist" Fear'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Parry', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Melee Weapon or Shield. "Resist," a weapon delivered attack.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Shatter', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Weapon or Shield'
skill.prop = nil
skill.incant = 'Shatter'
skill.description = 'Target: Weapon or Shield. "Shatter."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Slash 5', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Damage 5'
skill.description = '"Damage 5"'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Slash 5', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Slash 4', skillgroup: Skillgroup.find_by(name: 'Weapon'))
).save!

skill = Skill.find_or_initialize_by(name: 'Deadly Aim', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may deliver weapon-delivered Skills with packets instead.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Brawler', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Prone'
skill.description = 'Packet Chain, "Prone."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Brawler', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Deadly Aim', skillgroup: Skillgroup.find_by(name: 'Fighter'))
).save!

skill = Skill.find_or_initialize_by(name: 'Crushing Blow', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Weakness'
skill.description = '"Weakness"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Defense', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When your armor is at full points, it provides three additional Armor Points over its standard value. Prerequisite: Arms, Legs, and Torso protected.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Defense', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Light Armor Proficiency',
                               skillgroup: Skillgroup.find_by(name: 'Basic Defense Skills'))
).save!

skill = Skill.find_or_initialize_by(name: 'Startle', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'By my Voice, Disengage'
skill.description = '"By my Voice, Disengage."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Juggernaut', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Cure Paralyze'
skill.description = '"Cure Paralyze." This ability can be used when paralyzed.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Riposte', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Damage 4'
skill.description = 'When you expend the Parry skill, you immediately gain use of "Damage 4" on the opponent whose attack you Parried.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Riposte', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Parry', skillgroup: Skillgroup.find_by(name: 'Fighter'))
).save!

skill = Skill.find_or_initialize_by(name: 'Whirlwind Attack', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may chain any Tier 1-3 Melee Skill.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Weapon Specialization - One-Handed',
                                    skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = 'Self'
skill.prop = nil
skill.incant = nil
skill.description = 'Restore a tier 1-3 weapon or shadow skill.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Weapon Specialization - Two-Handed',
                                    skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = 'Self'
skill.prop = nil
skill.incant = nil
skill.description = 'Restore a tier 1-3 weapon or shadow skill.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Weapon Specialization - Ranged',
                                    skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = 'Self'
skill.prop = nil
skill.incant = nil
skill.description = 'Restore a tier 1-3 weapon or shadow skill.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Weapon Specialization - Sword and Shield',
                                    skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = 'Self'
skill.prop = nil
skill.incant = nil
skill.description = 'Restore a tier 1-3 weapon or shadow skill.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Weapon Specialization - Dual Wield',
                                    skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = 'Self'
skill.prop = nil
skill.incant = nil
skill.description = 'Restore a tier 1-3 weapon or shadow skill.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Slay', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Death'
skill.description = '"Death."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Cleave', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you successfully use the skill Slay, you may immediately gain one additional use of Slay to use on an opponent within 5 feet. If not used within 10 seconds, the extra Slay is lost.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Cleave', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Slay', skillgroup: Skillgroup.find_by(name: 'Fighter'))
).save!

skill = Skill.find_or_initialize_by(name: 'Defiance', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may crawl and talk while in your bleed out count.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Defiance', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Diehard', skillgroup: Skillgroup.find_by(name: 'Fighter'))
).save!

skill = Skill.find_or_initialize_by(name: 'Weapon Mastery - One Handed',
                                    skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Armament: Chosen Weapons. While wielding your weapon Specialization style, you may call "Resist" to Disarm and Shatter.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Weapon Mastery - One Handed', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Weapon Specialization - One-Handed',
                               skillgroup: Skillgroup.find_by(name: 'Fighter'))
).save!

skill = Skill.find_or_initialize_by(name: 'Weapon Mastery - Two Handed',
                                    skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Armament: Chosen Weapons. While wielding your weapon Specialization style, you may call "Resist" to Disarm and Shatter.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Weapon Mastery - Two Handed', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Weapon Specialization - Two-Handed',
                               skillgroup: Skillgroup.find_by(name: 'Fighter'))
).save!

skill = Skill.find_or_initialize_by(name: 'Weapon Mastery - Ranged', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Armament: Chosen Weapons. While wielding your weapon Specialization style, you may call "Resist" to Disarm and Shatter.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Weapon Mastery - Ranged', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Weapon Specialization - Ranged', skillgroup: Skillgroup.find_by(name: 'Fighter'))
).save!

skill = Skill.find_or_initialize_by(name: 'Weapon Mastery - Sword and Shield',
                                    skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Armament: Chosen Weapons. While wielding your weapon Specialization style, you may call "Resist" to Disarm and Shatter.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Weapon Mastery - Sword and Shield', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Weapon Specialization - Sword and Shield',
                               skillgroup: Skillgroup.find_by(name: 'Fighter'))
).save!

skill = Skill.find_or_initialize_by(name: 'Weapon Mastery - Dual Wield',
                                    skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Armament: Chosen Weapons. While wielding your weapon Specialization style, you may call "Resist" to Disarm and Shatter.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Weapon Mastery - Dual Wield', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Weapon Specialization - Dual Wield',
                               skillgroup: Skillgroup.find_by(name: 'Fighter'))
).save!

skill = Skill.find_or_initialize_by(name: 'Action Surge', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'This skill allows you to use any skill for a second time after successful use. You must perform the second use within 10 seconds, or you lose the Action Surge.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Dual Strike', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Armament: Two Weapons - You can use one offensive melee skill against two different opponents as long as you strike them at the same time with both weapons.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Marked for Death', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'I mark you as my enemy'
skill.description = 'State "I mark you as my enemy" to your opponent. During this battle, you may Parry (as per the skill) all called weapon attacks made by your target. You may not use this skill with Riposte.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Studied Foe', skillgroup: Skillgroup.find_by(name: 'Fighter'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'If your Favored Foe uses a spell, excluding Final Death, you may state "Resist."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Studied Foe', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Favored Foe', skillgroup: Skillgroup.find_by(name: 'Fighter'))
).save!

puts 'Starting Paladin'

skill = Skill.find_or_initialize_by(name: 'Divine Aura', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Special')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You gain the tier 4 ability based on your deity from Dedicated to a Deity section of the rulebook.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Aura of Cleansing', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Aura')
skill.skilldelivery = Skilldelivery.find_by(name: 'Aura')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = '"Resist" Disease.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Aura of Cleansing', skillgroup: Skillgroup.find_by(name: 'Paladin')),
  requiredskill: Skill.find_by(name: 'Divine Aura', skillgroup: Skillgroup.find_by(name: 'Paladin'))
).save!

skill = Skill.find_or_initialize_by(name: 'Aura of Courage', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Aura')
skill.skilldelivery = Skilldelivery.find_by(name: 'Aura')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = '"Resist" Fear."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Aura of Courage', skillgroup: Skillgroup.find_by(name: 'Paladin')),
  requiredskill: Skill.find_by(name: 'Divine Aura', skillgroup: Skillgroup.find_by(name: 'Paladin'))
).save!

skill = Skill.find_or_initialize_by(name: 'Benefactors', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = '+2 Benefactor. Paladins begin the game with two Benefactors.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Empathic Healing', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Through water, I heal you <number of Hit Points>'
skill.description = '"Through water, I heal you <number of Hit Points>." This spell allows you to transfer your Hit Points to a single target. If you give away all of your Hit Points, you immediately go to Dedrot\'s Realm.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Repair Wounds', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, I heal you 5 Hit Points'
skill.description = '"Through Life, I heal you 5 Hit Points."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Slash 5', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Resttype.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Damage 5'
skill.description = '"Damage 5"'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Slash 5', skillgroup: Skillgroup.find_by(name: 'Paladin')),
  requiredskill: Skill.find_by(name: 'Slash 4', skillgroup: Skillgroup.find_by(name: 'Weapon'))
).save!

skill = Skill.find_or_initialize_by(name: 'Smite', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Resttype.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Death to Undead'
skill.description = '"Death to Undead"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Armor of Faith', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = 'Holy Symbol'
skill.incant = 'Through Spirit, Bestow 3 Temporary Armor'
skill.description = 'Prop Required: Holy Symbol. "Through Spirit, Bestow 3 Temporary Armor."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Aura of Strength', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Aura')
skill.skilldelivery = Skilldelivery.find_by(name: 'Aura')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Increase all called damage by +1.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Aura of Strength', skillgroup: Skillgroup.find_by(name: 'Paladin')),
  requiredskill: Skill.find_by(name: 'Divine Aura', skillgroup: Skillgroup.find_by(name: 'Paladin'))
).save!

skill = Skill.find_or_initialize_by(name: 'Aura of Will', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Aura')
skill.skilldelivery = Skilldelivery.find_by(name: 'Aura')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Resist" Mind.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Aura of Will', skillgroup: Skillgroup.find_by(name: 'Paladin')),
  requiredskill: Skill.find_by(name: 'Divine Aura', skillgroup: Skillgroup.find_by(name: 'Paladin'))
).save!

skill = Skill.find_or_initialize_by(name: 'Defense', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When your armor is at full points, it provides three additional Armor Points over its standard value. Prerequisite: Arms, Legs, and Torso protected.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Defense', skillgroup: Skillgroup.find_by(name: 'Paladin')),
  requiredskill: Skill.find_by(name: 'Light Armor Proficiency',
                               skillgroup: Skillgroup.find_by(name: 'Basic Defense Skills'))
).save!

skill = Skill.find_or_initialize_by(name: 'Divine Blessing', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Corpse Only'
skill.prop = nil
skill.incant = 'Through Spirit, I grant you the divine blessing of <Your Deity>. Inform Dedrot\'s Barrister of your blessing'
skill.description = '"Through Spirit, I grant you the divine blessing of <Your Deity>. Inform Dedrot\'s Barrister of your blessing."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Divine Fortification', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Bestow X temporary Armor'
skill.description = '"Bestow X temporary Armor" X is equal to your current number of Benefactors.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Parry', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Armament Required: Melee Weapon or Shield. "Resist," a weapon delivered attack.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Self-Sacrifice', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, I take any diseases or poison onto myself'
skill.description = '"Through Life, I take any diseases or poison onto myself." You must know what ails the target before you can cast this spell on them. If you take on poison, you need to know where the target\'s poison count currently stands and take over from there. You cannot already have the affliction you are taking. You cannot resist ailments received by this spell or mitigate them in any way.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Aura of Freedom', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Aura')
skill.skilldelivery = Skilldelivery.find_by(name: 'Aura')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = '"Resist" to Paralyze.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Aura of Freedom', skillgroup: Skillgroup.find_by(name: 'Paladin')),
  requiredskill: Skill.find_by(name: 'Divine Aura', skillgroup: Skillgroup.find_by(name: 'Paladin'))
).save!

skill = Skill.find_or_initialize_by(name: 'Divine Archon', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Special')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You gain the tier 6 ability based on your deity from Dedicated to a Deity section of the rulebook.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Divine Archon', skillgroup: Skillgroup.find_by(name: 'Paladin')),
  requiredskill: Skill.find_by(name: 'Divine Aura', skillgroup: Skillgroup.find_by(name: 'Paladin'))
).save!

skill = Skill.find_or_initialize_by(name: 'Dual Auras', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Aura')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'For the battle, your Benefactors may be affected by two of your Auras instead of one.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Dual Auras', skillgroup: Skillgroup.find_by(name: 'Paladin')),
  requiredskill: Skill.find_by(name: 'Divine Aura', skillgroup: Skillgroup.find_by(name: 'Paladin'))
).save!

skill = Skill.find_or_initialize_by(name: 'Lay on Hands', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Life, heal all Hit Points'
skill.description = '"Through Life, heal all Hit Points."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Resolute Shield', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Armament: Shield. For the battle, Choose a spell damage type ( Fire, Air, Water, Earth, Spirit, Mind, Arcane) or Death. Spells of that type that strike your shield may be "Resisted."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Slay:', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Death'
skill.description = '"Death."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Slay:', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = nil
skill.description = 'When you are dropped to 0 Hit Points by an Undead attacker, you may choose to activate this skill once you have fallen to the ground. You are healed to full Hit Points. After 30 seconds, you will drop back to 0 Hit Points.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Ultimate Sacrifice', skillgroup: Skillgroup.find_by(name: 'Paladin'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Corpse'
skill.prop = nil
skill.incant = 'Through Life, cure death and heal all Hit Points'
skill.description = '"Through Life, cure death and heal all Hit Points." You then immediately go to Dedrot\'s Realm. You may use this ability on people who have been affected by "Final Death", however, you will take on the Final Death'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Ultimate Sacrifice', skillgroup: Skillgroup.find_by(name: 'Paladin')),
  requiredskill: Skill.find_by(name: 'Self-Sacrifice', skillgroup: Skillgroup.find_by(name: 'Paladin'))
).save!

puts('Starting Ranger')

skill = Skill.find_or_initialize_by(name: 'Favored Foe', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 6
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Armament - Weapon or Shield. You can choose one type of enemy as a foe you specialize in battling. Once selected, you can not change your Favored Foe type. You may state "Resist" to a called melee skill from this foe type.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Natural Defenses', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Deep Woods Only - "Resist" Disease.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Schelde', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Place of Power')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = '"Resist" any weapon-delivered skill that deals called damage.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Strength of the Hunter', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Place of Power')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Damage 10'
skill.description = '"Damage 10"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Tactics', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Place of Power')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Favored Foe'
skill.prop = nil
skill.incant = 'By my Voice Disengage To <Favored Foe>'
skill.description = '"By my Voice Disengage To <Favored Foe>."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Tactics', skillgroup: Skillgroup.find_by(name: 'Ranger')),
  requiredskill: Skill.find_by(name: 'Favored Foe', skillgroup: Skillgroup.find_by(name: 'Ranger'))
).save!

skill = Skill.find_or_initialize_by(name: 'Vine Wrappings', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Deep Woods Only - "Resist" Shatter or Disarm.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Walk it Off', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Cure all Maims'
skill.description = 'RP: One minute nursing your wounds. "Cure all Maims."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Waylay', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'From behind'
skill.prop = nil
skill.incant = '"Waylay'
skill.description = 'Armament: Dagger, "Waylay."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Capture', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Place of Power')
skill.skilldelivery = Skilldelivery.find_by(name: 'Burst')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Favored Foe'
skill.prop = nil
skill.incant = 'Snare to <Favored Foe>, 1 minute'
skill.description = '"Snare to <Favored Foe>, 1 minute."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Capture', skillgroup: Skillgroup.find_by(name: 'Ranger')),
  requiredskill: Skill.find_by(name: 'Favored Foe', skillgroup: Skillgroup.find_by(name: 'Ranger'))
).save!

skill = Skill.find_or_initialize_by(name: 'Defense', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When your armor is at full points, it provides three additional Armor Points over its standard value. Prerequisite: Arms, Legs, and Torso protected.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Defense', skillgroup: Skillgroup.find_by(name: 'Ranger')),
  requiredskill: Skill.find_by(name: 'Light Armor Proficiency',
                               skillgroup: Skillgroup.find_by(name: 'Basic Defense Skills'))
).save!

skill = Skill.find_or_initialize_by(name: 'Herbal Antidote', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'I cure you of disease and heal you five Hit Points'
skill.description = 'Deep Woods Only - RP: One minute searching for suitable herbs. "I cure you of disease and heal you five Hit Points."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Hunter\'s Call', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Favored Foe'
skill.prop = nil
skill.incant = 'By Voice, To <Favored Foe> Taunt'
skill.description = '"By Voice, To <Favored Foe> Taunt."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Hunter\'s Call', skillgroup: Skillgroup.find_by(name: 'Ranger')),
  requiredskill: Skill.find_by(name: 'Favored Foe', skillgroup: Skillgroup.find_by(name: 'Ranger'))
).save!

skill = Skill.find_or_initialize_by(name: 'Hunter\'s Mark', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'I mark you as my Prey'
skill.description = '"I mark you as my Prey" Treat your marked Target as your Favored Foe until your next Short Rest.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Hunter\'s Mark', skillgroup: Skillgroup.find_by(name: 'Ranger')),
  requiredskill: Skill.find_by(name: 'Favored Foe', skillgroup: Skillgroup.find_by(name: 'Ranger'))
).save!

skill = Skill.find_or_initialize_by(name: 'Place of Peace', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'By voice, through mind, Pacify'
skill.description = 'Location: Place of Power area ONLY. "By voice, through mind, Pacify."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Predator\'s Presence', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'By Voice, through mind, fear'
skill.description = 'Deep Woods Only "By Voice, through mind, fear."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Snare', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Air, Snare, One minute'
skill.description = '"Through Air, Snare, One minute."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Ancient Energy', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = '"Restore" a single Place of Power skill while within 20 feet of a Place of Power'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Enhanced Metabolism', skillgroup: Skillgroup.find_by(name: 'Ranger'))
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

skill = Skill.find_or_initialize_by(name: 'Hunter\'s Trance', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Favored Foe'
skill.prop = nil
skill.incant = nil
skill.description = 'Weapon Chain - You may Chain a Tier 1-3 Weapon or Shadow Skill and deliver it To <Favored Foe>'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Hunter\'s Trance', skillgroup: Skillgroup.find_by(name: 'Ranger')),
  requiredskill: Skill.find_by(name: 'Favored Foe', skillgroup: Skillgroup.find_by(name: 'Ranger'))
).save!

skill = Skill.find_or_initialize_by(name: 'Studied Foe', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'If your Favored Foe uses a spell, excluding Final Death, you may state "Resist."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Studied Foe', skillgroup: Skillgroup.find_by(name: 'Ranger')),
  requiredskill: Skill.find_by(name: 'Favored Foe', skillgroup: Skillgroup.find_by(name: 'Ranger'))
).save!

skill = Skill.find_or_initialize_by(name: 'Foe Hammer', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Favored Foe'
skill.prop = nil
skill.incant = 'Death to <Favored Foe>'
skill.description = '"Death to <Favored Foe>."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Foe Hammer', skillgroup: Skillgroup.find_by(name: 'Ranger')),
  requiredskill: Skill.find_by(name: 'Favored Foe', skillgroup: Skillgroup.find_by(name: 'Ranger'))
).save!

skill = Skill.find_or_initialize_by(name: 'Dual Strike', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Armament: Two Weapons - You can use one melee weapon skill against two different opponents as long as you strike them at the same time using both weapons.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Dual Strike', skillgroup: Skillgroup.find_by(name: 'Ranger')),
  requiredskill: Skill.find_by(name: 'Dual Weapons', skillgroup: Skillgroup.find_by(name: 'Weapon'))
).save!

skill = Skill.find_or_initialize_by(name: 'Retaliate', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = 'Favored Foe'
skill.prop = nil
skill.incant = nil
skill.description = 'Every time your Favored Foe strikes you with a melee weapon skill, you can immediately counter with the same skill. You must have Favored Foe. Retaliating does not expend the use of the skill if you possess it.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Retaliate', skillgroup: Skillgroup.find_by(name: 'Ranger')),
  requiredskill: Skill.find_by(name: 'Favored Foe', skillgroup: Skillgroup.find_by(name: 'Ranger'))
).save!

skill = Skill.find_or_initialize_by(name: 'Hidden Weakness', skillgroup: Skillgroup.find_by(name: 'Ranger'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'For the battle, you retain all uses of <Favored Foe> skills that are "Resisted."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Hidden Weakness', skillgroup: Skillgroup.find_by(name: 'Ranger')),
  requiredskill: Skill.find_by(name: 'Favored Foe', skillgroup: Skillgroup.find_by(name: 'Ranger'))
).save!

puts('Starting Rogue')

skill = Skill.find_or_initialize_by(name: 'Avoid Trap', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'You may state, "Resist" if you trigger a trap. Triggered area-of-effect traps can still affect anyone who doesn\'t use Avoid Trap.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Backstab', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'From Behind'
skill.prop = nil
skill.incant = 'Crit, Damage 6'
skill.description = 'Target: From Behind. "Crit, Damage 6."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Backstab', skillgroup: Skillgroup.find_by(name: 'Rogue')),
  requiredskill: Skill.find_by(name: 'Sneak Attack 3', skillgroup: Skillgroup.find_by(name: 'Shadow'))
).save!

skill = Skill.find_or_initialize_by(name: 'Greater Hidden Stash', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may have a large clearly-marked pouch no larger than 8" x 10" on your person that is immune to searching. If searched or Rapid Searched, you may inform the searcher they find nothing'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Greater Hidden Stash', skillgroup: Skillgroup.find_by(name: 'Rogue')),
  requiredskill: Skill.find_by(name: 'Hidden Stash', skillgroup: Skillgroup.find_by(name: 'Shadow'))
).save!

skill = Skill.find_or_initialize_by(name: 'Lightning Reflexes', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = '"Resist" Waylay'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Resist Poison', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = '"Resist" Poison'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Deadly Aim', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may deliver weapon-delivered Skills with packets instead.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Waylay', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'From behind'
skill.prop = nil
skill.incant = 'Waylay'
skill.description = 'Armament: Dagger, "Waylay."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Pick Pocket', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may attempt to remove a numbered clothes pin from an NPC. If you are successful, discreetly take the numbered clothespin to the tavernkeep to redeem the spoils of your actions.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Dagger Mastery', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Armament: 2 Daggers. "Resist" Shatter and Disarm.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Dagger Mastery', skillgroup: Skillgroup.find_by(name: 'Rogue')),
  requiredskill: Skill.find_by(name: 'Dual Weapons', skillgroup: Skillgroup.find_by(name: 'Weapon'))
).save!

skill = Skill.find_or_initialize_by(name: 'Startle', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Voice')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'By my Voice, Disengage'
skill.description = 'By my Voice, Disengage'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Escape Artist', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = nil
skill.description = 'RP: One minute freeing yourself. You may cure <Bind/Snare/Pin/Paralyze> that was not delivered as a spell'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Knife Juggler', skillgroup: Skillgroup.find_by(name: 'Rogue'))
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
  skill: Skill.find_by(name: 'Knife Juggler', skillgroup: Skillgroup.find_by(name: 'Rogue')),
  requiredskill: Skill.find_by(name: 'Thrown Weapon', skillgroup: Skillgroup.find_by(name: 'Weapon'))
).save!

skill = Skill.find_or_initialize_by(name: 'Master Strike', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Paralyze, 1 Minute'
skill.description = 'Paralyze, 1 Minute.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Master Strike', skillgroup: Skillgroup.find_by(name: 'Rogue')),
  requiredskill: Skill.find_by(name: 'Backstab', skillgroup: Skillgroup.find_by(name: 'Rogue'))
).save!

skill = Skill.find_or_initialize_by(name: 'Spell Grounding', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Armament: Thrown Dagger. "Resist" to a Spell Packet delivered effect. You immediately take a "Disarm" to one of your Thrown Weapons that cannot be mitigated or reduced in any way.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Spell Grounding', skillgroup: Skillgroup.find_by(name: 'Rogue')),
  requiredskill: Skill.find_by(name: 'Knife Juggler', skillgroup: Skillgroup.find_by(name: 'Rogue'))
).save!

skill = Skill.find_or_initialize_by(name: 'Walk It Off', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Cure all Maims'
skill.description = 'RP: One minute nursing your wounds. "Cure all Maims."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Venom Mastery', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you use an Oil, you may expend this skill to get a second use of that Oil immediately. If not used before the end of the battle, the other application is lost.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Assassinate', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Crit Death'
skill.description = 'Armament - Dagger or Ranged Weapon. "Crit Death."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Assassinate', skillgroup: Skillgroup.find_by(name: 'Rogue')),
  requiredskill: Skill.find_by(name: 'Backstab', skillgroup: Skillgroup.find_by(name: 'Rogue'))
).save!

skill = Skill.find_or_initialize_by(name: 'Blackjack', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'From behind'
skill.prop = nil
skill.incant = 'Sleep'
skill.description = 'Armament: Dagger. "Sleep."'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Blackjack', skillgroup: Skillgroup.find_by(name: 'Rogue')),
  requiredskill: Skill.find_by(name: 'Assassinate', skillgroup: Skillgroup.find_by(name: 'Rogue'))
).save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Blackjack', skillgroup: Skillgroup.find_by(name: 'Rogue')),
  requiredskill: Skill.find_by(name: 'Waylay', skillgroup: Skillgroup.find_by(name: 'Rogue'))
).save!

skill = Skill.find_or_initialize_by(name: 'Cheat Death', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'At the end of your bleed out count, you awaken with one Hit Points rather than bleeding out and dying.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Disguise', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You can disguise yourself as another player race, a monster, or other creature by putting on the appropriate mask and makeup as required. The Disguise lasts until you remove the mask, prosthetics, or makeup. You supply any costumes, prosthetics, and makeup required for this ability.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Evasion', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = '"Resist" any called damage effect.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Fan of Knives', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Armament: Two Throwing Daggers. When you use a skill with one thrown weapon, you may immediately use the same skill with the other thrown weapon. If not used within 10 seconds, the other skill use is lost.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Fan of Knives', skillgroup: Skillgroup.find_by(name: 'Rogue')),
  requiredskill: Skill.find_by(name: 'Spell Grounding', skillgroup: Skillgroup.find_by(name: 'Rogue'))
).save!

skill = Skill.find_or_initialize_by(name: 'Penetrating Strike', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Dispel All'
skill.description = '"Dispel All"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Slippery Mind', skillgroup: Skillgroup.find_by(name: 'Rogue'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = '"Resist" Mind, Corrupt, or Enslave.'
skill.save!

puts('Starting Runesmith')

skill = Skill.find_or_initialize_by(name: 'Breakdown', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
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

skill = Skill.find_or_initialize_by(name: 'Crushing Force', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Limb'
skill.prop = nil
skill.incant = 'Crit Maim <Left/Right - Arm/Leg>'
skill.description = 'Armament : Hammer "Crit Maim <Left/Right - Arm/Leg>."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Field Repairs', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You do not require a Forge to use skills from the Mender Profession.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Inner Fire', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist | Fire Damage 5'
skill.description = '"Resist" Fire. You may immediately Packet or Weapon Deliver: "Fire Damage 5." Within 10 seconds of calling "Resist," the effect is lost.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Lesser Runic Reserves', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may immediately use any Novice Runecraft Recipe you know on yourself, without materials.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Novice Runecraft', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may craft Novice Runecraft Recipes'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Strategic Repairs', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When paying an upkeep cost for items, you may upkeep two identical items for their singular upkeep cost.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Better Than New', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When you Repair a full set of Armor (Arms, Legs, Torso) to full, you also "Bestow Two Temporary Armor," to the full armor set.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Defense', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'When your armor is at full points, it provides three additional Armor Points over its standard value. Prerequisite: Arms, Legs, and Torso protected.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Defense', skillgroup: Skillgroup.find_by(name: 'Runesmith')),
  requiredskill: Skill.find_by(name: 'Light Armor Proficiency',
                               skillgroup: Skillgroup.find_by(name: 'Basic Defense Skills'))
).save!

skill = Skill.find_or_initialize_by(name: 'Journeyman Runecraft', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may craft Journeyman Runecraft Recipes'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Journeyman Runecraft', skillgroup: Skillgroup.find_by(name: 'Runesmith')),
  requiredskill: Skill.find_by(name: 'Novice Runecraft', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
).save!

skill = Skill.find_or_initialize_by(name: 'Parry', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Armament Required: Melee Weapon or Shield. "Resist" a weapon delivered attack.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Patch Job', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Bestow Four Temporary Armor Points'
skill.description = '"Bestow Four Temporary Armor Points."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Runic Guard', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Armament Required: Shield. For the battle, state "Resist" to any Packet delivered effect that strikes your shield.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Shatter', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Weapon')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Shatter'
skill.description = 'Target: Weapon or Shield. "Shatter."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Unrelenting Defense', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Disengage'
skill.description = 'Weapon Chain - "Disengage."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Greater Runic Reserves', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Without materials, you may immediately use any Journeyman or Master Runecraft Recipe you know on yourself.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Indomitable Hammer', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = 'Armament Required: Hammer - "Resist" Disarm and Shatter Effects targeting your Hammer.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Master Runecraft', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Crafting')
skill.skilldelivery = Skilldelivery.find_by(name: 'Crafting')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may craft Master Runecraft Recipes'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Master Runecraft', skillgroup: Skillgroup.find_by(name: 'Runesmith')),
  requiredskill: Skill.find_by(name: 'Journeyman Runecraft', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
).save!

skill = Skill.find_or_initialize_by(name: 'Rapid Refit', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Touch')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Restore All Armor'
skill.description = '"Restore All Armor."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Runic Branding', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Prop Required: A Stylized and Visible Marking. - Runecraft Recipes you are targeted with last until used versus when they would usually expire.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Runic Mastery', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Bestow effects placed upon you from a Runecraft Recipe may be used twice before the Bestow effect is considered used'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Shatter Magic', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Armament Required: Hammer - Long Rest - "Dispel All."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Soul of the Forge', skillgroup: Skillgroup.find_by(name: 'Runesmith'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Long Rest - Building Required: Forge. "Shell All," while you are actively engaging in crafting roleplay at the Forge.'
skill.save!

puts 'Starting Wizard'

skill = Skill.find_or_initialize_by(name: 'Alignment Focus', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may cast any spell Through <arcane, air, earth, fire, water, wood, spirit, or mind> instead of its normal alignment. When you purchase this skill, you must select the alignment you will use going forward. Once selected, this choice may not be changed.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Arcane Barrage', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Burst ')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may cast any single spell that does damage as a Burst effect. State "Burst," and the incant of the spell. Ex. Magic Missile "Through Arcane, Damage 1.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Command (Silence)', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet ')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Mind, Silence, one minute'
skill.description = '"Through Mind, Silence, one minute."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Glass Cannon', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Burst ')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Arcane, Damage <Hit Point x 3>'
skill.description = 'You may convert your Hit Points into a single Arcane attack. Each Hit Point increases the damage by 3. If you expend all your Hit Points in this manner, the total damage doubles, but you immediately drop to the ground with the Death effect and become a spirit on your way to Dedrot\'s Realm. "Through Arcane, Damage <Hit Point x 3>."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Identify', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may turn in a yellow- stickered item to learn the properties of the object. Curses are not revealed with this skill.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Magic Missile', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet ')
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Through Arcane, Damage 1'
skill.description = 'Through Arcane, Damage 1'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Personal Spell Shield', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = '"Resist" a Through effect.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Shatter', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 4
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Fire - I shatter the <weapon or shield> in your right/left hand'
skill.description = '"Through Fire - I shatter the <weapon or shield> in your right/left hand."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Alignment Specialization', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = 'Resist'
skill.description = '"Resist" your chosen alignment.'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Alignment Specialization', skillgroup: Skillgroup.find_by(name: 'Wizard')),
  requiredskill: Skill.find_by(name: 'Alignment Focus', skillgroup: Skillgroup.find_by(name: 'Wizard'))
).save!

skill = Skill.find_or_initialize_by(name: 'Empowered Spellbook', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = 'Your spellbook must be boffer-style, made entirely of foam. It may be no larger than 9" wide and 12" tall'
skill.incant = nil
skill.description = 'With no weapons on your person and using both hands, you may use your spellbook to block incoming damage-causing "Through" packet effects from enemies, state "Resist," and immediately restore one of your tier 1-3 expended spells.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Mage Armor', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Through Earth, Bestow four Temporary Armor Points'
skill.description = '"Through Earth, Bestow four Temporary Armor Points."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Meteor Swarm ', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Burst')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Arcane, Damage Three'
skill.description = '"Through Arcane, Damage Three"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Minor Globe of Invulnerability',
                                    skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Through wood, shell against magic, five minutes'
skill.description = '"Through wood, shell against magic, five minutes." State, "Shell" to all Through effects. The shell breaks if you take weapon damage, engage in combat, or cast a spell.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Scrying', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Between Events')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = 'Something connected to the person, place, or object '
skill.incant = nil
skill.description = 'You may ask a single question concerning a person, place, or object. The more focused your question regarding that person, place, or object, the more information you will receive at the following check-in.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Stone Skin', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Through Earth, Stone Skin'
skill.description = '"Through Earth, Stone Skin." Shell to all uncalled damage. State "Shell." Duration 5 minutes.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Power Word Sleep', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 5
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = 'Self'
skill.prop = nil
skill.incant = 'Through Mind, Sleep'
skill.description = '"Through Mind, Sleep."'
skill.save

skill = Skill.find_or_initialize_by(name: 'Alignment Mastery', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Permanent')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 1
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Damage Spells of your chosen alignment that you cast deal +1 damage'
skill.save!

Skillrequirement.find_or_initialize_by(
  skill: Skill.find_by(name: 'Alignment Mastery', skillgroup: Skillgroup.find_by(name: 'Wizard')),
  requiredskill: Skill.find_by(name: 'Alignment Specialization', skillgroup: Skillgroup.find_by(name: 'Wizard'))
).save!

skill = Skill.find_or_initialize_by(name: 'Chained Offense', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'You may cast any single spell that does damage as a Packet Chain effect.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Counterspell', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Arcane, Bestow Resist a Through-based effect'
skill.description = '"Through Arcane, Bestow Resist a Through-based effect"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Dispel Magic', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Arcane, Dispel all'
skill.description = '"Through Arcane, Dispel all"'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Elemental Outburst', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through <Earth, Fire, Water, Air, Wood>, Damage 10'
skill.description = '"Through <Earth, Fire, Water, Air, Wood>, Damage 10." After casting this spell, you take four damage of the same type. You may not resist this damage in any way.'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Power Word (Kill)', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Packet')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Spirit, Death'
skill.description = '"Through Spirit, Death."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Shatter Storm', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Long Rest')
skill.skilldelivery = Skilldelivery.find_by(name: 'Chain')
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = 'Through Fire, I shatter the <shield/weapon> in your <left/right> hand'
skill.description = 'Packet Chain - "Through Fire, I shatter the <shield/weapon> in your <left/right> hand."'
skill.save!

skill = Skill.find_or_initialize_by(name: 'Spell Penetration', skillgroup: Skillgroup.find_by(name: 'Wizard'))
skill.tier = 6
skill.resttype = Resttype.find_by(name: 'Short Rest')
skill.skilldelivery = nil
skill.playeravailable = true
skill.maxpurchase = 10
skill.target = nil
skill.prop = nil
skill.incant = nil
skill.description = 'Immediately recast a packet spell your target resisted.'
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



puts('One Time Scripts')

sr = Skillrequirement.find_by(
  skill: Skill.find_by(name: 'Parry', skillgroup: Skillgroup.find_by(name: 'Fighter')),
  requiredskill: Skill.find_by(name: 'Riposte', skillgroup: Skillgroup.find_by(name: 'Fighter'))
)
sr&.destroy

event = Event.find_by(name: 'Adventure Weekend - MAR 2020')
event&.destroy

event = Event.find_by(name: 'Adventure Weekend - MAY 2020')
event&.destroy

event = Event.find_by(name: 'Adventure Weekend - AUG 2020')
event&.destroy

event = Event.find_by(name: 'Adventure Weekend - OCT 2020')
event&.destroy

event = Event.find_by(name: 'Adventure Weekend - NOV 2020')
event&.destroy

event = Event.find_by(name: 'Adventure Weekend - MAR 2021')
event&.destroy

event = Event.find_by(name: 'Adventure Weekend - MAY 2021')
event&.destroy

event = Event.find_by(name: 'Adventure Weekend - AUG 2021')
event&.destroy

event = Event.find_by(name: 'Adventure Weekend - SEP 2021')
event&.destroy

event = Event.find_by(name: 'Adventure Weekend - NOV 2021')
event&.destroy
