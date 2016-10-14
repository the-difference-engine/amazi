class Location < ApplicationRecord
  belongs_to :location_subcategory
  belongs_to :water_provider
  has_many :saved_locations
  has_many :problems

  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def full_street_address
    return "#{address}, #{city}, #{state}, #{zip}"
  end

end
