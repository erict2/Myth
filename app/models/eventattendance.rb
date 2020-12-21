class Eventattendance < ApplicationRecord
  has_many :events
  has_many :characters
end
