class Character < ApplicationRecord
  belongs_to :player, optional: true
  belongs_to :race, optional: true
  belongs_to :deity, optional: true
  belongs_to :characterclass, optional: true
end
