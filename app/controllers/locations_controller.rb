class LocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
  end

  def map
  end
end
