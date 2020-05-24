class Room < ApplicationRecord
  has_many :photos
  has_many :types
  has_many :equipments
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
