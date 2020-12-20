class Skill < ApplicationRecord
    belongs_to :skillgroup
    belongs_to :resttype
    belongs_to :skilldelivery, optional: true
end