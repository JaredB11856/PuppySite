class Puppy < ApplicationRecord
  belongs_to :litters, optional: :true
  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :main_image, ImageUploader
  mount_uploader :image_one, ImageUploader
  mount_uploader :image_two, ImageUploader
end
