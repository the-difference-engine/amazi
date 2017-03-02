class Image < ApplicationRecord
  belongs_to :location
  has_attached_file :image, {
  	:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
  	:url => "/system/:attachment/:id/:style/:filename"
  }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/png", "image/jpeg", "image/gif"]

end
