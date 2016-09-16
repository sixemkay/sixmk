class ProductsController < ApplicationController

  
  def index
    
  end


  def show
    @product = Product.find_by_id(params[:id])
    gon.product = @product.as_json
    gon.images = @product.product_images.as_json
    redirect_to root_url if @product.nil?
  end


  def thankyou
    @product = Product.find_by_id(params[:id])
    gon.product = @product
    redirect_to root_url if @product.nil?
  end


end
