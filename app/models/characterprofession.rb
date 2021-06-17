# frozen_string_literal: true

class Characterprofession < ApplicationRecord
  belongs_to :profession
  belongs_to :character

  validates :character, uniqueness: { scope: :profession }
  default_scope { order(profession_id: :asc) }
end