class Image < ApplicationRecord
  belongs_to :location
  belongs_to :user
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/png", "image/jpeg", "image/gif"]


end
