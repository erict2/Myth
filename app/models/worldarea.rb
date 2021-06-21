# frozen_string_literal: true

class Worldarea < ApplicationRecord

  default_scope { order(name: :asc) }

end