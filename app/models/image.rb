class Image < ApplicationRecord
	belongs_to :location
	has_attached_file :image
  validates_attachment_content_type :image, content_type: { content_type: ["image/jpg", "image/png", "image/jpeg", "image/gif"] }


end
