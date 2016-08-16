class LocationCategory < ApplicationRecord
  has_many :location_subcategories
end
