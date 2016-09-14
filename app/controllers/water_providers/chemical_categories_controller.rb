class WaterProviders::ChemicalCategoriesController < ApplicationController

  def show
    @chemical_category = ChemicalCategory.friendly.find(params[:id])
    @water_qualities = WaterProvider.find(params[:water_provider_id]).water_qualities.where(chemical_id: Chemical.where(chemical_category_id: @chemical_category.id))
  end

end
