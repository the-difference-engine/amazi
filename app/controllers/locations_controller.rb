class LocationsController < ApplicationController
  before_action :authenticate_admin!, except: [:send_sms, :show, :map, :create, :new, :new_image, :search, :select]
  before_action :authenticate_user!, only:[:new, :create, :new_image, :search, :select]

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
    @water_types = WaterType.all
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
    if (params[:location][:filtered] || params[:location][:fountain] || params[:location][:eco_alternative])
      if @location.save
        if @location.latitude && @location.longitude
          place_id = @location.get_google_places_id(params[:location][:name_of_business])
          if place_id
            @location.google_place = place_id
            @location.save
            if params[:location][:filtered] == "1"
              @location_water_types = LocationWaterType.create(location_id: @location.id, water_type_id: 2)
            end
            if params[:location][:fountain] == "1"
              @location_water_types = LocationWaterType.create(location_id: @location.id, water_type_id: 1)
            end
            if params[:location][:eco_alternative] == "1"
              @location_water_types = LocationWaterType.create(location_id: @location.id, water_type_id: 3)
            end
            # flash[:success] = "Location has been added"
            redirect_to "/locations/#{@location.id}/new_image"
          else
            @location.destroy
            # flash[:danger] = @location.errors.full_messages.join("<br>").html_safe
            render "/locations/new"
          end
        else
          @location.destroy
          # flash[:danger] = @location.errors.full_messages.join("<br>").html_safe
          render "/locations/new"
        end
      end
    else
      # flash[:danger] = "You need to select at least one water type"
      render "/locations/new"
    end
  end

  def search
    @place = nil
    @results = nil
  end

  def select
    @place = params[:location][:place]
    @results = Unirest.get("https://maps.googleapis.com/maps/api/place/autocomplete/json?input=#{@place}&types=geocode&key=#{ENV['GOOGLE_PLACES_API_KEY']}").body["predictions"]
    render :search
  end

  def new_image
    @location = Location.find(params[:id])
    @image = Image.new
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


def send_sms
  if params[:phone_number] != ""
    account_sid = 'AC0a5c16e3a48bc2116f7211c97e968647'
    auth_token = '3aa291a5704ce33d05e9022d6d4bfd12'

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create(
      from: '+18057281585',
      to: "+1#{params[:phone_number]}",
      body: "Your friend wanted to share the location of this water bottle refill station at #{params[:location_name].squish} with you: #{request.original_url}",
    )

    respond_to do |format|
      format.json { render :json => {"success" =>  "Message Sent!"} }
    end
  end
end


  private

  def location_params
    params.require(:location).permit(:address, :city, :state, :zip, :location_subcategory_id, :water_provider_id, :latitude, :longitude, :google_place)
  end
end
