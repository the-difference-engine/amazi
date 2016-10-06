class UnitsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @units = Unit.all
  end

  def show
    @unit = Unit.find(params[:id])
  end

  def new
    @unit = Unit.new
  end

  def edit
    @unit = Unit.find(params[:id])
  end

  def create
    @unit = Unit.new(unit_params)

    if @unit.save
      redirect_to "/admin"
    else

    end
  end

  def update
    @unit = Unit.find(params[:id])
    @units.attributes = unit_params
    if @unit.save
      redirect_to "/admin"
    else

    end
  end

  def destroy
    @unit = Unit.find(params[:id])
    if @unit.destroy
      redirect_to "/admin"
    else

    end
  end

  private

  def unit_params
    params.require(:unit).permit(:name)
  end
end
