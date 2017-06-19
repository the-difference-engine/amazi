class AdminController < ApplicationController
  before_action :authenticate_admin!
  def location
    @location = Location.find(params[:id])
    google_place = Unirest.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{@location.google_place}&key=#{ENV['GOOGLE_PLACES_API_KEY']}").body
    @location_name = google_place["result"]["name"]
  end
  def save_location
    @location = Location.find(params[:id])
    @location.water_types.destroy_all
    params[:water_types].each do |wtid, value|
      LocationWaterType.create(location_id: @location.id, water_type_id: wtid.to_i)
    end
    redirect_to "/locations/#{@location.id}"
  end

end
