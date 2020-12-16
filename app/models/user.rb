class User < ApplicationRecord
  has_many :characters
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :usertype,
    :inclusion  => { :in => [ 'Cast', 'Player', 'Admin' ],
    :message    => "%{value} is not a valid Player Type" }
end
