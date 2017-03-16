class ImagesController < ApplicationController

  def create_image
    @image = Image.new
    if Image.create(image_params)
      redirect_to "/locations/#{params[:image][:location_id]}"
    else
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
