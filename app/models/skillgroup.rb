class Skillgroup < ApplicationRecord
    has_many :skills
    has_many :characterclassskillgroup
    has_many :characterclasses, through: :characterclassskillgroup
end
