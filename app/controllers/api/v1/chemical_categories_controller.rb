class Api::V1::ChemicalCategoriesController < ApplicationController
  def index

  end

  def show

  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def chemical_category_params
    params.require(:chemcical_category).permit(:name, )
  end
end
