class Message < ApplicationRecord
<<<<<<< HEAD
    belongs_to :user 
    has_many :comments , dependent: :destroy
end
=======
 self.table_name = :messages
    belongs_to :user , dependent: :destroy
    has_many :comments, dependent: :destroy
    belongs_to :post, inverse_of: :message

    # accepts_nested_attributes_for :posts
end
>>>>>>> 5b376bc... commit for the reposertry
