class Room < ApplicationRecord
  has_many :photos
  has_many :types
  has_many :equipments
  belongs_to :user
end
