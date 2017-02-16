class Api::V1::SavedLocationsController < ApplicationController

  def create
    @saved_location = SavedLocation.new(user_id: current_user.id, location_id: params[:location_id])
    if @saved_location.save
      render json: @saved_location
    else

    end
  end

end
