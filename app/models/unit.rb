class Unit < ApplicationRecord
  has_many :water_qualities
  has_many :chemicals
end
