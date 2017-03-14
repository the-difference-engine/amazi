class SavedLocationsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @saved_locations = SavedLocation.all
  end

  def show
    @saved_location = SavedLocation.find(params[:id])
    binging.pry
  end

  def new
    @saved_location = SavedLocation.new
  end

  def edit
    @saved_location = SavedLocation.find(params[:id])
  end

  def create
    @saved_location = SavedLocation.new(saved_location_params)

    if @saved_location.save
      redirect_to "/admin"
    else

    end
  end

  def update
    @saved_location = SavedLocation.find(params[:id])
    @saved_locations.attributes = saved_location_params
    if @saved_location.save
      redirect_to "/admin"
    else

    end
  end

  def destroy
    @saved_location = SavedLocation.find(params[:id])
    if @saved_location.destroy
      redirect_to "/admin"
    else

    end
  end

  private

  def saved_location_params
    params.require(:saved_location).permit(:user_id, :location_id)
  end
end
