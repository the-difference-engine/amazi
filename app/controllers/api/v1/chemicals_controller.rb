class Api::V1::ChemicalsController < ApplicationController
  def index
    @chemicals = Chemical.all
    render json: @chemicals
  end

  def show
    @chemical = Chemical.find(params[:id])
    render json: @chemical
  end

  def create
    @chemical = Chemical.new(chemical_params)
    if @chemical.save
      render json: @chemical
    else

    end
  end

  def update
    @chemical = Chemical.find(params[:id])
    @chemical.attributes = chemical_params

    if @chemical.save
      render json: @chemical
    else

    end
  end

  def destroy
    @chemical = Chemical.find(params[:id])

    if @chemical.destroy
      render json: "Chemical Destroyed"
    else

    end
  end

  private

  def chemical_params
    params.require(:chemical).permit(:name, :range_minimum, :range_maximum, :unit_id, :chemical_category_id)
  end
end
