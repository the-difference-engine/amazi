class ChemicalCategoriesController < ApplicationController
  def index
    @chemical_categories = ChemicalCategory.all
  end

  def show
    @chemical_category = ChemicalCategory.find(params[:id])
  end

  def create
    @chemical_category = ChemicalCategory.new(chemical_category_params)

    if @chemical_category.save
      redirect_to "/admin"
    else

    end
  end

  def update
    @chemical_category = ChemicalCategory.find(params[:id])
    @chemical_categories.attributes = chemical_category_params
    if @chemical_category.save
      redirect_to "/admin"
    else

    end
  end

  def destroy
    @chemical_category = ChemicalCategory.find(params[:id])
    if @chemical_category.destroy
      redirect_to "/admin"
    else

    end
  end

  private

  def chemical_category_params
    params.require(:chemical_category).permit(:name)
  end
end
