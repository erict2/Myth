class Explog < ApplicationRecord
    has_many :user, foreign_key: "id"
    
    default_scope { order(aquiredate: :desc) }
    belongs_to :character
    
end