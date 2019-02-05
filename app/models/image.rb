class Image < ApplicationRecord
mount_uploader :image, ImageUploader
validates :content, presence: true
validates :image, presence: true
belongs_to :user
has_many :likes, dependent: :destroy
has_many :like_users, through: :likes, source: :user
end
