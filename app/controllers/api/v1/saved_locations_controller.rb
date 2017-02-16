class Api::V1::SavedLocationsController < ApplicationController
  
  def create
    @location = Location.find_by(location_params)
    if @location.save
      render json: @location
    else

    end
  end

end
