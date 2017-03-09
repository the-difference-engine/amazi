class AmazonProductsController < ApplicationController

  def index
    @products = AmazonProduct.all
  end

  def new
    @products = AmazonProduct.all
  end

  def create 
    @products = AmazonProduct.create(product_id: params[:product_id])
    if @product.save
      redirect_to "/amazon_products"
    end
  end

  def destroy
    @products = Amazonproduct.find_by(:id)
    if @product.destroy
      redirect_to "/Amazon_products"
    end
  end

end
