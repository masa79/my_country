class Image < ApplicationRecord
  belongs_to :local, optional: true
  mount_uploader :url, ImageUploader
end
