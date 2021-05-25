# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :eventattendances
  has_many :characters, through: :eventattendances
  has_many :users, through: :characters

  default_scope { order(startdate: :desc) }
end
