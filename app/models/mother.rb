class Mother < ApplicationRecord
  has_many :litters    

  extend FriendlyId
  friendly_id :name, use: :slugged
end
