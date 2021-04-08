# frozen_string_literal: true

class Guild < ApplicationRecord
  has_many :characters
end
