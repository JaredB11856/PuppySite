class Mother < ApplicationRecord
  has_many :litters    

  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :main_image, ImageUploader
  mount_uploader :image_one, ImageUploader
  mount_uploader :image_two, ImageUploader
end
