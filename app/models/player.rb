class Player < ApplicationRecord
  has_many :characters
  validates :playertype,
    :inclusion  => { :in => [ 'Cast', 'Player' ],
    :message    => "%{value} is not a valid Player Type" }
end
