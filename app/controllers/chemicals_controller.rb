class ChemicalsController < ApplicationController

  def show
    @chemical = Chemical.friendly.find(params[:id])
  end
end
