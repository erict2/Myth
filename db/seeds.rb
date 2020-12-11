puts 'Starting Character Classes'
CharacterClass.delete_all
CharacterClass.create(name: 'Alchemist', playeravailable: true)
CharacterClass.create(name: 'Artificer', playeravailable: true)
CharacterClass.create(name: 'Bard', playeravailable: true)
CharacterClass.create(name: 'Cleric', playeravailable: true)
CharacterClass.create(name: 'Druid', playeravailable: true)
CharacterClass.create(name: 'Fighter', playeravailable: true)
CharacterClass.create(name: 'Paladin', playeravailable: true)
CharacterClass.create(name: 'Ranger', playeravailable: true)
CharacterClass.create(name: 'Rogue', playeravailable: true)
CharacterClass.create(name: 'Runesmith', playeravailable: true)
CharacterClass.create(name: 'Wizard', playeravailable: true)

puts 'Starting Deities'
Deity.delete_all
Deity.create(name: 'Adara', playeravailable: true)
Deity.create(name: 'Amitel', playeravailable: true)
Deity.create(name: 'Dedrot', playeravailable: true)
Deity.create(name: 'Enoon', playeravailable: true)
Deity.create(name: 'Ixbus', playeravailable: true)
Deity.create(name: 'Naenya', playeravailable: true)
Deity.create(name: 'Ororo', playeravailable: true)
Deity.create(name: 'Ryknos', playeravailable: true)
Deity.create(name: 'Scandelen', playeravailable: true)

puts 'Starting Races'
Race.delete_all
Race.create(name: 'Dale Elf', playeravailable: true)
Race.create(name: 'Deep Elf', playeravailable: true)
Race.create(name: 'Dwarf', playeravailable: true)
Race.create(name: 'Goblin', playeravailable: true)
Race.create(name: 'Half Elf', playeravailable: true)
Race.create(name: 'High Elf', playeravailable: true)
Race.create(name: 'Human', playeravailable: true)
Race.create(name: 'Suhk', playeravailable: true)
Race.create(name: 'Wildren', playeravailable: true)

Race.create(name: 'Tengu', playeravailable: false)