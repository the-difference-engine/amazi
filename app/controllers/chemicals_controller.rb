class ChemicalsController < ApplicationController
  before_action :authenticate_admin!, except: [:show]
  def show
    @chemical = Chemical.friendly.find(params[:id])
  end

  def index
    @chemicals = Chemical.all
  end

  def new
    @chemical = Chemical.new
  end

  def edit
    @chemical = Chemical.find(params[:id])
  end

  def create
    @chemical = Chemical.new(chemical_params)

    if @chemical.save
      redirect_to "/admin"
    else

    end
  end

  def update
    @chemical = Chemical.friendly.find(params[:id])
    @chemical.attributes = chemical_params
    if @chemical.save
      redirect_to "/admin"
    else

    end
  end

  def destroy
    @chemical = Chemical.find(params[:id])
    if @chemical.destroy
      redirect_to "/admin"
    else

    end
  end

  private

  def chemical_params
    params.require(:chemical).permit(:name, :maximum, :unit_id, :chemical_category_id)
  end
end
