class LocationSubcategory < ApplicationRecord
  belongs_to :location_category
  has_many :locations
end
