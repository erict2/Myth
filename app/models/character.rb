class Character < ApplicationRecord
  belongs_to :user
  belongs_to :race
  belongs_to :characterclass
  belongs_to :deity, optional: true
  belongs_to :house, optional: true
  belongs_to :guild, optional: true
end
