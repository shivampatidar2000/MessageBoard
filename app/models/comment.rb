class Comment < ApplicationRecord
 self.table_name = :comments

  belongs_to :message  ,class_name: 'Message'
  belongs_to :user
  has_many :likes,dependent: :destroy
  # validates :content, presence: true
end