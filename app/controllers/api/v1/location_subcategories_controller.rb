class Api::V1::LocationSubsubcategoriesController < ApplicationController
  def index
    @location_subcategories = LocationSubsubcategory.all
    render json: @location_subcategories
  end

  def show
    @location_subcategory = LocationSubsubcategory.find(params[:id])
    render json: @location_subcategory
  end

  def create
    @location_subcategory = LocationSubsubcategory.new(location_subcategory_params)
    if @location_subcategory.save
      render json: @location_subcategory
    else

    end
  end

  def update
    @location_subcategory = LocationSubsubcategory.find(params[:id])
    @location_subcategory.attributes = location_subcategory_params

    if @location_subcategory.save
      render json: @location_subcategory
    else

    end
  end

  def destroy
    @location_subcategory = LocationSubsubcategory.find(params[:id])

    if @location_subcategory.destroy
      render json: "LocationSubsubcategory Destroyed"
    else

    end
  end

  private

  def location_subcategory_params
    params.require(:location_subcategory).permit(:name, :location_category_id)
  end
end
