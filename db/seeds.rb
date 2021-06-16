# frozen_string_literal: true

puts('One Time Scripts')

race = Race.find_or_initialize_by(name: 'Dale Elf')
race.playeravailable = true
race.save!