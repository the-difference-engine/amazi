class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else

    end
  end

  def update
    @user = User.find(params[:id])
    @user.attributes = user_params

    if @user.save
      render json: @user
    else

    end
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      render json: "User Destroyed"
    else

    end
  end

  private

  def user_params
    params.require(:user).permit(:user_id, :user_type)
  end
end
