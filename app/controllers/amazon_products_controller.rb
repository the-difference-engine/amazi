class AmazonProductsController < ApplicationController

  def index
    @products = AmazonProduct.all
  end

  def new
  end

  def create 
  end

  def destroy
  end

end
