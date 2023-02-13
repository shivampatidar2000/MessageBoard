class Post < ApplicationRecord
    mount_uploader :image, AttachmentUploader # Tells rails to use this uploader for this model.   
    mount_uploader :video, VideoUploader # Tells rails to use this uploader for this model.   
    # has_one_attached :video_ss    # has_many :messages,dependent: :destroy
    has_many :user 
    has_many :likes, dependent: :destroy

    # validates :image, presence: true

    # accepts_nested_attributes_for :messages
end
