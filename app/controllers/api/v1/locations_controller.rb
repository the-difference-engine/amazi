class Api::V1::LocationsController < ApplicationController
  def index
    if params[:swLat]
      @locations = Location.where(latitude: params[:swLat]..params[:neLat], longitude: params[:swLong]..params[:neLong])
    else
      @locations = Location.all
    end
    render json: @locations
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

  private

  def location_params
    params.require(:location).permit(:address, :city, :state, :zip, :location_subcategory_id, :water_provider_id)
  end
end
