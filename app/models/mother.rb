class Mother < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :litters  
end
