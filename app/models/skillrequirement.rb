# frozen_string_literal: true

class Skillrequirement < ApplicationRecord
  belongs_to :skill
  belongs_to :requiredskill, class_name: 'Skill'
end
