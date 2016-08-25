class Api::V1::UnitsController < ApplicationController
  def index
    @units = Unit.all
    render json: @units
  end

  def show
    @unit = Unit.find(params[:id])
    render json: @unit
  end

  def create
    @unit = Unit.new(unit_params)
    if @unit.save
      render json: @unit
    else

    end
  end

  def update
    @unit = Unit.find(params[:id])
    @unit.attributes = unit_params

    if @unit.save
      render json: @unit
    else

    end
  end

  def destroy
    @unit = Unit.find(params[:id])

    if @unit.destroy
      render json: "Unit Destroyed"
    else

    end
  end

  private

  def unit_params
    params.require(:unit).permit(:name)
  end
end
