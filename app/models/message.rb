class Message < ApplicationRecord
 self.table_name = :messages
    belongs_to :user , dependent: :destroy
    has_many :comments, dependent: :destroy
    belongs_to :post, inverse_of: :message

    # accepts_nested_attributes_for :posts
end