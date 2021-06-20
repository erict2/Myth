class Courier < ApplicationRecord
  belongs_to :character

  default_scope { order(created_at: :desc) }
end
