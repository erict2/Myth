class User < ApplicationRecord
  has_many :characters

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
         
  validates :usertype,
    :inclusion  => { :in => [ 'Cast', 'Player', 'Admin' ],
    :message    => "%{value} is not a valid Player Type" }
end
