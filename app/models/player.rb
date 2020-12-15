class Player < ApplicationRecord
  has_many :characters
  validates :playertype,
    :inclusion  => { :in => [ 'Cast', 'Player', 'Admin' ],
    :message    => "%{value} is not a valid Player Type" }
end
