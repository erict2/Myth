class Explog < ApplicationRecord
    default_scope { order(aquiredate: :desc) }
    belongs_to :character
end