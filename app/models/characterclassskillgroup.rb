# frozen_string_literal: true

class Characterclassskillgroup < ApplicationRecord
  belongs_to :skillgroup
  belongs_to :characterclass
end
