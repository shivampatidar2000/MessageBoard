class User < ApplicationRecord
<<<<<<< HEAD
  has_many :messages , dependent: :destroy
  has_many :comments , dependent: :destroy

=======
  has_many :messages, dependent: :destroy 
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :posts , dependent: :destroy
>>>>>>> 5b376bc... commit for the reposertry
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
         
end
