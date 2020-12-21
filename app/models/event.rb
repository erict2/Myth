class Event < ApplicationRecord
  has_many :eventattendances
  has_many :characters, through: :eventattendances
end
