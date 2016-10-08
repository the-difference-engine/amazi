class LocationSubcategoriesController < ApplicationController
  before_action :authenticate_admin!
  def index
    @location_subcategories = LocationSubcategory.all
  end

  def show
    @location_subcategory = LocationSubcategory.find(params[:id])
  end

  def create
    @location_subcategory = LocationSubcategory.new(location_subcategory_params)

    if @location_subcategory.save
      redirect_to "/admin"
    else

    end
  end

  def update
    @location_subcategory = LocationSubcategory.find(params[:id])
    @location_subcategories.attributes = location_subcategory_params
    if @location_subcategory.save
      redirect_to "/admin"
    else

    end
  end

  def destroy
    @location_subcategory = LocationSubcategory.find(params[:id])
    if @location_subcategory.destroy
      redirect_to "/admin"
    else

    end
  end

  private

  def location_subcategory_params
    params.require(:location_subcategory).permit(:name, :location_category_id)
  end
end
