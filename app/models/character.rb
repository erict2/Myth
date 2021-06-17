# frozen_string_literal: true

class Character < ApplicationRecord
  has_many :characterskills
  has_many :skills, through: :characterskills
  has_many :characterprofessions
  has_many :professions, through: :characterprofessions
  has_many :professiongroups, through: :professions
  has_many :courier

  belongs_to :user
  has_many :eventattendances
  has_many :events, through: :eventattendances
  belongs_to :race
  belongs_to :characterclass
  belongs_to :deity, optional: true
  belongs_to :house, optional: true
  belongs_to :guild, optional: true
  validates :name, presence: true

  after_update :check_class

  has_one_attached :photo

  def check_class
    if saved_change_to_characterclass_id?
      characterskills.each do |charskill|
        charskill.destroy if charskill.skill.tier >= 4
      end
      if characterclass.name != 'Druid'
        self.totem = nil
        save!
      end
    end
  end
end
