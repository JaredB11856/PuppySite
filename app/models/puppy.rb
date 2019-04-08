class Puppy < ApplicationRecord
  belongs_to :litters, optional: :true
  extend FriendlyId
  friendly_id :name, use: :slugged
end
