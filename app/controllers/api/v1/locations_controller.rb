class Api::V1::LocationsController < ApplicationController
  def index
    @locations = Location.all
    render json: @locations
  end

  def show
    @location = Location.find(params[:id])
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