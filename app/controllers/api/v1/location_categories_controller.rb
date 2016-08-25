class Api::V1::LocationCategoriesController < ApplicationController
  def index
    @location_categories = LocationCategory.all
    render json: @location_categories
  end

  def show
    @location_category = LocationCategory.find(params[:id])
    render json: @location_category
  end

  def create
    @location_category = LocationCategory.new(location_category_params)
    if @location_category.save
      render json: @location_category
    else

    end
  end

  def update
    @location_category = LocationCategory.find(params[:id])
    @location_category.attributes = location_category_params

    if @location_category.save
      render json: @location_category
    else

    end
  end

  def destroy
    @location_category = LocationCategory.find(params[:id])

    if @location_category.destroy
      render json: "LocationCategory Destroyed"
    else

    end
  end

  private

  def location_category_params
    params.require(:location_category).permit(:name)
  end
end
