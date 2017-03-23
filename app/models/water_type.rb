class WaterType < ApplicationRecord
  has_many :location_water_types
  has_many :locations, through: :location_water_types

end
