# frozen_string_literal: true

class House < ApplicationRecord
  has_many :characters
end
