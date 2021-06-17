# frozen_string_literal: true

class Race < ApplicationRecord
  default_scope { order(name: :asc) }
end
