class Print < ApplicationRecord
  mount_uploader :poster, PosterUploader
  has_many :comments
end
