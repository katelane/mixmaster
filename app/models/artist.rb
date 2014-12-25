class Artist < ActiveRecord::Base
  has_many :songs
  has_many :mixes through: :songs
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
