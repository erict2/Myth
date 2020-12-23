class Event < ApplicationRecord
  has_many :eventattendances
  has_many :characters, through: :eventattendances
  has_many :users, through: :characters
end
