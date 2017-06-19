class HomeController < ApplicationController
  before_action :authenticate_admin!, only: [:admin]
  # def index
  #   @home = Home.all
  # end

  def admin

  end

  def carousel
    @products = AmazonProduct.all
  end

  def slick
    @products = AmazonProduct.all
  end

end
