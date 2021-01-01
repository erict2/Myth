class Profession < ApplicationRecord
  belongs_to :professiongroup
  has_many :characterprofessions
  has_many :professionrequirements
  has_many :professionrequirements, foreign_key: 'requiredprofession_id'
end
