class WaterProvidersController < ApplicationController
  def show
    @water_provider = WaterProvider.find(params[:id])
  end
end
