class Player < ApplicationRecord
  validates :playertype,
    :inclusion  => { :in => [ 'Cast', 'Player' ],
    :message    => "%{value} is not a valid Player Type" }
end
