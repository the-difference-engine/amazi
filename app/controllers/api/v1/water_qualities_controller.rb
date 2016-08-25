class Api::V1::WaterQualitiesController < ApplicationController
  def index
    @water_qualities = WaterQuality.all
    render json: @water_qualities
  end

  def show
    @water_quality = WaterQuality.find(params[:id])
    render json: @water_quality
  end

  def create
    @water_quality = WaterQuality.new(water_quality_params)

    if @water_quality.save
      render json: @water_quality
    else

    end
  end

  def update
    @water_quality = WaterQuality.find(params[:id])
    @water_quality.attributes = water_quality_params
    if @water_quality.save
      render json: @water_quality
    else

    end
  end

  def destroy
    @water_quality = WaterQuality.find(params[:id])
    @water_quality.destroy
    render json: "Water Quality Destroyed"
  end

  private

  def water_quality_params
    params.require(:water_quality).permit()
  end
end
