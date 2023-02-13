class Comment < ApplicationRecord
  belongs_to :message
  belongs_to :user
  has_many :likes,dependent: :destroy
  # validates :content, presence: true
end
