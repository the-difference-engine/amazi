class ProblemsController < ApplicationController
  before_action :authenticate_admin!, only: [:index]
  def index
  end
  
  def new
  end

  def create
    @problem = Problem.create(user_id: current_user.id, location_id: params[:location_id], description: params[:description], active: true)
    redirect_to "/locations/#{params[:location_id]}"
  end

  def destroy
    @problem = Problem.find(params[:id])
    @problem.active = false
    @problem.save
  end
end
