class Api::V1::WaterProvidersController < ApplicationController
  def index
    @water_providers = WaterProvider.all
    render json: @water_providers
  end

  def show
    @water_provider = WaterProvider.find(params[:id])
    render json: @water_provider
  end

  def create
    @water_provider = WaterProvider.new(water_provider_params)
    if @water_provider.save
      render json: @water_provider
    else

    end
  end

  def update
    @water_provider = WaterProvider.find(params[:id])
    @water_provider.attributes = water_provider_params

    if @water_provider.save
      render json: @water_provider
    else

    end
  end

  def destroy
    @water_provider = WaterProvider.find(params[:id])

    if @water_provider.destroy
      render json: "WaterProvider Destroyed"
    else

    end
  end

  private

  def water_provider_params
    params.require(:water_provider).permit(:name)
  end
end
