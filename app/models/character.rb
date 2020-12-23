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
end
