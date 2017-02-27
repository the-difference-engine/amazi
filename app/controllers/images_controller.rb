class ImagesController < ApplicationController

  def create_image
    @image = Image.new
    if Image.create(image_params)
      redirect_to "/locations/#{params[:id]}"
    else
      redirect_to "/"
    end
  end

  private

    def image_params
      params.require(:image).permit(:location_id, :image)
    end

end
