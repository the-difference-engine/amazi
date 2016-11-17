require "csv"

namespace :import do
  task data: :environment do
    CSV.foreach("lib/assets/data.csv", :headers => true) do |row|
      row_hash = row.to_hash
      location = Location.find_or_initialize_by(address: row_hash["Address"], city: row_hash["City"], state: row_hash["State"], zip: row_hash["Zip Code"])
      if !location.id
        location.save
        if location.latitude && location.longitude
          place_id = location.get_google_places_id(row_hash["Location Name"])
          if place_id
            location.google_place = place_id
            location.save
          else
            location.destroy
          end
        else
          location.destroy
          break
        end
      else

      end
    end
  end
end




    # t.string   "address"
    # t.string   "city"
    # t.string   "state"
    # t.string   "zip"
    # t.integer  "location_subcategory_id"
    # t.integer  "water_provider_id"
    # t.datetime "created_at"
    # t.datetime "updated_at"
    # t.float    "latitude"
    # t.float    "longitude"
    # t.string   "google_place"