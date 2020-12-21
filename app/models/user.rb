class User < ApplicationRecord
  has_many :characters
  has_one :explog, foreign_key: 'grantedby_id'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
         
  validates :usertype,
    :inclusion  => { :in => [ 'Cast', 'Player', 'Admin' ],
    :message    => "%{value} is not a valid Player Type" }
end
