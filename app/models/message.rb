class Message < ApplicationRecord
 self.table_name = :messages
    belongs_to :user , dependent: :destroy
    has_many :comments, dependent: :destroy
end