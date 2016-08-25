class Api::V1::ChemicalCategoriesController < ApplicationController
  def index
    @chemical_categories = ChemicalCategory.all

    render json: @chemical_categories
  end

  def show
    @chemical_category = ChemicalCategory.find(params[:id])

    render json: @chemical_category
  end

  def create
    @chemical_category = ChemicalCategory.new(chemical_category_params)

    if @chemical_category.save
      render json: @chemical_category
    else

    end
  end

  def update
    @chemical_category = ChemicalCategory.find(params[:id])
    @chemical_categories.attributes = chemical_category_params
    if @chemical_category.save
      render json: @chemical_category
    else

    end
  end

  def destroy
    @chemical_category = ChemicalCategory.find(params[:id])
    if @chemical_category.destroy
      render "Chemical Category Destroyed"
    else

    end
  end

  private

  def chemical_category_params
    params.require(:chemical_category).permit(:name)
  end
end
