class LocationWaterType < ApplicationRecord
  has_many :locations
  has_many :water_types
end
