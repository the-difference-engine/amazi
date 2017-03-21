class AmazonProductsController < ApplicationController
# before_action :authenticate_admin!
  def index
    @products = AmazonProduct.all
  end

  def new
    @products = AmazonProduct.new
  end

  def create
    @products = AmazonProduct.new(product_id: params[:product_id])
    if @products.save
      flash[:success] = "Item has been added"
      redirect_to "/amazon_products"
    end
  end

  def destroy
    @products = Amazonproduct.find_by(:id)
    if @products.destroy
      flash[:warning] = "Item has been removed"
      redirect_to "/amazon_products"
    end
  end

end
