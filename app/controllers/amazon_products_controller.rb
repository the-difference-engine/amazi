class AmazonProductsController < ApplicationController

  def index
    @products = AmazonProduct.all
  end

  def new
  end

  def create
    @products = AmazonProduct.create(product_id: params[:product_id])
    if @product.save
      flash[:success] = "Item has been added"
      redirect_to "/Amazon_products"
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
