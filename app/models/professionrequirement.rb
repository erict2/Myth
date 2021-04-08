# frozen_string_literal: true

class Professionrequirement < ApplicationRecord
  belongs_to :profession
  belongs_to :requiredprofession, class_name: 'Profession'
end
