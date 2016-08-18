class Location < ApplicationRecord
  belongs_to :location_subcategory
  belongs_to :water_provider
end
