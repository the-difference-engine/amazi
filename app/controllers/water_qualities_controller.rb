class WaterQualitiesController < ApplicationController
  before_action :authenticate_admin!
  def index
    @water_qualities = WaterQuality.all.order(:water_provider_id)
  end

  def show
    @water_quality = WaterQuality.find(params[:id])
  end

  def new
    @water_quality = WaterQuality.new
  end

  def edit
    @water_quality = WaterQuality.find(params[:id])
  end

  def create
    @water_quality = WaterQuality.new(water_quality_params)

    if @water_quality.save
      redirect_to "/admin"
    else

    end
  end

  def update
    @water_quality = WaterQuality.find(params[:id])
    @water_quality.attributes = water_quality_params
    if @water_quality.save
      redirect_to "/admin"
    else

    end
  end

  def destroy
    @water_quality = WaterQuality.find(params[:id])
    if @water_quality.destroy
      redirect_to "/admin"
    else

    end
  end

  private

  def water_quality_params
    params.require(:water_quality).permit(:water_provider_id, :chemical_id, :chemical_amount, :unit_id)
  end
end
