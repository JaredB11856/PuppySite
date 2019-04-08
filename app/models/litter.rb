class Litter < ApplicationRecord
  belongs_to :mother
  has_many :puppies
 extend FriendlyId
  friendly_id :date, use: :slugged
end
