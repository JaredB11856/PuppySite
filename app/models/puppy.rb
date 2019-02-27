class Puppy < ApplicationRecord
  belongs_to :litters, optional: :true
end
