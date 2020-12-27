class Character < ApplicationRecord
  has_many :explogs
  has_many :characterskills
  has_many :skills, through: :characterskills
  has_many :eventattendances
  has_many :events, through: :eventattendances
  belongs_to :user
  belongs_to :race
  belongs_to :characterclass
  belongs_to :deity, optional: true
  belongs_to :house, optional: true
  belongs_to :guild, optional: true
  validates :name, presence: true

  after_update :check_class


  def check_class
    if (saved_change_to_characterclass_id?)
      self.characterskills.each do |charskill|
        if charskill.skill.tier >= 4
          charskill.destroy
        end
      end
      if (self.characterclass.name != 'Druid')
        self.totem = nil
        self.save!
      end
    end
  end


end
