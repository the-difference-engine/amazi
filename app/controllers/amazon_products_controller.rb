class AmazonProductsController < ApplicationController

  def index
    @products = AmazonProduct.all
  end

  def new
    @products = AmazonProduct.new(product_id: params[:product_id])
    if @products.save
      flash[:success] = "Item has been added"
  end

  def create
    @products = AmazonProduct.create(product_id: params[:product_id])
    if @products.save
      flash[:success] = "Item has been added"
    end
  end

  def destroy
    @products = Amazonproduct.find_by(:id)
    if @product.destroy
      flash[:warning] = "Item has been removed"
      redirect_to "/Amazon_products"
    end
  end

end
