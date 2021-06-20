# frozen_string_literal: true

class Deity < ApplicationRecord
  default_scope { order(name: :asc) }
end
