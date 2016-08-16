class Chemical < ApplicationRecord
  has_many :water_qualities
  has_namy :water_providers, through :water_qualities
  belongs_to :chemical_category
  belongs_to :unit
end
