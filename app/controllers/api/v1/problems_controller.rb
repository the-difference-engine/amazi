class Api::V1::ProblemsController < ApplicationController
  def index
    if params[:active]
      @problems = Problem.where(active: true)
    else
      @problems = Problem.all
    end
  end

  def show
    @problem = Problem.find(params[:id])
    render json: @problem
  end

  def create
    @problem = Problem.new(problem_params)
    if @problem.save
      render json: @problem
    else

    end
  end

  def update
    @problem = Problem.find(params[:id])
    @problem.attributes = problem_params

    if @problem.save
      render json: @problem
    else

    end
  end

  def destroy
    @problem = Problem.find(params[:id])
    @problem.active = !@problem.active
    if @problem.save
      render json: @problem.active
    else

    end
  end

  private

  def problem_params
    params.require(:problem).permit(:user_id, :location_id, :flag_category_id, :description, :active)
  end
end
