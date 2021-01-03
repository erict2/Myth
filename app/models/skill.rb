class Skill < ApplicationRecord
    belongs_to :skillgroup
    belongs_to :resttype
    belongs_to :skilldelivery, optional: true
    has_many :characterskills
    has_many :skillrequirements
    has_many :skillrequirements, foreign_key: 'requiredskill_id'

    default_scope { order(tier: :asc, skillgroup_id: :asc, name: :asc) }
end