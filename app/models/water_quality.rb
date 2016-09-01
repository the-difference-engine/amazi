class WaterQuality < ApplicationRecord
  belongs_to :water_provider
  belongs_to :chemical
  belongs_to :unit
end
