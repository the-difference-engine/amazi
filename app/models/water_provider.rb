class WaterProvider < ApplicationRecord
  has_many :locations
  has_many :water_qualities
  has_many :chemicals, through: :water_qualities
end
