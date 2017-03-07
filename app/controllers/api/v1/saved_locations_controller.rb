class Api::V1::SavedLocationsController < ApplicationController

  def create

    @saved_location = SavedLocation.new(user_id: current_user.id, location_id: params[:location_id])
    if @saved_location.save
      render json: @saved_location
    else

    end
  end

  def destroy

    delete_saved_location = SavedLocation.find(params[:id])
    
    if delete_saved_location.destroy
      respond_to do |format|
        format.json { render :json => {:message => "Saved location deleted"} }
      end
    else
      respond_to do |format|
        format.json { render :json => {:message => "error - saved location was not deleted"} }
      end
    end

    # redirect_to "/locations/#{params[:location_id]}"
 end

end
