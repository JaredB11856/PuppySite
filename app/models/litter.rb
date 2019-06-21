class Litter < ApplicationRecord
  belongs_to :mother
  has_many :puppies
 extend FriendlyId
  friendly_id :date, use: :slugged

  mount_uploader :main_image, ImageUploader
  mount_uploader :image_one, ImageUploader
  mount_uploader :image_two, ImageUploader
end
