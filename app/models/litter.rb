class Litter < ApplicationRecord
  belongs_to :mother
  has_many :puppies
end
