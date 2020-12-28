class Eventattendance < ApplicationRecord
  belongs_to :event
  belongs_to :user
  belongs_to :character, optional: true

  validates :user, presence: true
  validates :event, presence: true
  validates :registrationtype, presence: true
end
