class Characterclass < ApplicationRecord
    has_many :characters
    has_many :characterclassskillgroup
    has_many :skillgroups, through: :characterclassskillgroup
    has_many :skills, through: :skillgroups

    default_scope { order(name: :asc) }
end
