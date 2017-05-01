class ImagesController < ApplicationController

  def create_image
    @image = Image.new
    if Image.create(image_params)
      redirect_to "/locations/#{params[:image][:location_id]}"
      flash[:success] = "Location has been added"
    else
      flash[:danger] = @location.errors.full_messages.join("<br>").html_safe
      redirect_to "/locations/#{params[:image][:location_id]}"
    end
  end

  def index
  end

  private

    def image_params
      params.require(:image).permit(:user_id, :location_id, :image)
    end

end
