class LocationsController < ApplicationController
  before_action :authenticate_admin!, except: [:show, :map, :create, :new]

  def show
    @location = Location.find(params[:id])
    @client = GooglePlaces::Client.new(ENV['GOOGLE_PLACES_API_KEY'])
    @images = Image.where(location_id: @location.id)
    # faddress = "#{@location.address}, #{@location.city}, #{@location.state}"
    @c = @client.spot(@location.google_place)
    @image = Image.new

    @allpictures = []
    @c.instance_variable_get(:@photos).each do |pic|
      @allpictures << (pic.fetch_url(350))
    end
    @images.each do |image|
      @allpictures << image.image.url
    end

  end

  def map
  end

  def index
    @locations = Location.all
  end

  def new
  end

  def edit
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      if params[:tap]
        @location_water_types = LocationWaterType.create(location_id: @location.id, water_type_id: 1)
      end
      if params[:fountain]
        @location_water_types = LocationWaterType.create(location_id: @location.id, water_type_id: 2)
      end
      if params[:eco]
        @location_water_types = LocationWaterType.create(location_id: @location.id, water_type_id: 3)
      end
      flash[:success] = "Location has been added"
      redirect_to "/"
    else
      flash[:danger] = @location.errors.full_messages.join("<br>").html_safe
      render "/location/new"
    end
  end

  def update
    @location = Location.find(params[:id])
    @location.attributes = location_params
    if @location.save
      redirect_to "/admin"
    else

    end
  end

  def destroy
    @location = Location.find(params[:id])
    if @location.destroy
      redirect_to "/admin"
    else

    end
  end

  private

  def location_params
    params.require(:location).permit(:address, :city, :state, :zip, :location_subcategory_id, :water_provider_id, :latitude, :longitude)
  end
end
