class LocationCategoriesController < ApplicationController
  def index
    @location_categories = LocationCategory.all
  end

  def show
    @location_category = LocationCategory.find(params[:id])
  end

  def create
    @location_category = LocationCategory.new(location_category_params)

    if @location_category.save
      redirect_to "/admin"
    else

    end
  end

  def update
    @location_category = LocationCategory.find(params[:id])
    @location_categories.attributes = location_category_params
    if @location_category.save
      redirect_to "/admin"
    else

    end
  end

  def destroy
    @location_category = LocationCategory.find(params[:id])
    if @location_category.destroy
      redirect_to "/admin"
    else

    end
  end

  private

  def location_category_params
    params.require(:location_category).permit(:name)
  end
end
