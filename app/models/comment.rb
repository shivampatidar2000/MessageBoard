class Comment < ApplicationRecord
 self.table_name = :comments

  belongs_to :message  ,class_name: 'Message'
  belongs_to :user
  # validates :content, presence: true
end