class Characterprofession < ApplicationRecord
  belongs_to :profession
  belongs_to :character

  default_scope { order(profession_id: :asc) }
end
