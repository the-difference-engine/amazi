class WaterProvidersController < ApplicationController
  before_action :authenticate_admin!, except: [:show]
  def show
    @water_provider = WaterProvider.find(params[:id])
  end

  def index
    @water_providers = WaterProvider.all
  end

  def new
    @water_provider = WaterProvider.new
  end

  def edit
    @water_provider = WaterProvider.find(params[:id])
  end

  def create
    @water_provider = WaterProvider.new(water_provider_params)

    if @water_provider.save
      redirect_to "/admin"
    else

    end
  end

  def update
    @water_provider = WaterProvider.find(params[:id])
    @water_provider.attributes = water_provider_params
    if @water_provider.save
      redirect_to "/admin"
    else

    end
  end

  def destroy
    @water_provider = WaterProvider.find(params[:id])
    if @water_provider.destroy
      redirect_to "/admin"
    else

    end
  end

  private

  def water_provider_params
    params.require(:water_provider).permit(:name)
  end
end
