class Race < ApplicationRecord
    has_many :characters

    default_scope { order(name: :asc) }
end
