class Api::V1::LocationsController < ApplicationController

  def index
    if params[:swLat] && (params[:water_type] && params[:water_type] != "" && params[:water_type] != "0,0,0,0")
      locations = false
      water_types = params[:water_type][1..-1].split(',').collect! {|n| n.to_i}
      water_types.each do |type|
        unless type == 0
          if locations
            locations += WaterType.find(type).locations.where(latitude: params[:swLat]..params[:neLat], longitude: params[:swLong]..params[:neLong]).pluck(:id)
          else
            locations = WaterType.find(type).locations.where(latitude: params[:swLat]..params[:neLat], longitude: params[:swLong]..params[:neLong]).pluck(:id)
          end
        end
      end
      @locations = Location.where(id: locations)
    elsif params[:swLat]
      @locations = Location.includes(:water_types).where(latitude: params[:swLat]..params[:neLat], longitude: params[:swLong]..params[:neLong])
    else
      @locations = Location.all
    end
    if params[:open_now] != "false"
      location_ids = []
      @locations.each do |location|
        google_place = Unirest.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{location.google_place}&key=#{ENV['GOOGLE_PLACES_API_KEY']}").body
        location_ids << location.id if google_place["result"]["opening_hours"] && google_place["result"]["opening_hours"]["open_now"]
      end
      @locations = Location.where(id: location_ids)
    end
    render json: @locations.as_json(include: :water_types)
  end

  def show
    @location = Location.find(params[:id])
    @favorite_id = SavedLocation.is_saved_location?(params[:id]).id
    render json: @location
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      render json: @location
    else

    end
  end

  def update
    @location = Location.find(params[:id])
    @location.attributes = location_params

    if @location.save
      render json: @location
    else

    end
  end

  def destroy
    @location = Location.find(params[:id])
    if @location.destroy
      render json: "Location Destroyed"
    else

    end
  end

  def search
    @input = params[:input]
    @input.gsub!("_", " ")
    render json: Geocoder.coordinates(@input)
  end

  def place_name
    @location = Location.find(params[:id])
    google_place = Unirest.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{@location.google_place}&key=#{ENV['GOOGLE_PLACES_API_KEY']}").body
    render json: {name: google_place["result"]["name"]}
  end
  private

  def location_params
    params.require(:location).permit(:address, :city, :state, :zip, :location_subcategory_id, :water_provider_id)
  end
end
