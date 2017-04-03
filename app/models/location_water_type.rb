class LocationWaterType < ApplicationRecord
  belongs_to :location
  belongs_to :water_type
end
