class ProductsController < ApplicationController

  
  def index
    
  end


  def show
    @product = Product.find_by_id(params[:id])
    redirect_to root_url and return if @product.nil?
    gon.product = @product.as_json
    gon.images = @product.product_images.as_json
  end


  def thankyou
    @product = Product.find_by_id(params[:id])
    redirect_to root_url and return if @product.nil?
    gon.product = @product
    gon.images = @product.product_images.as_json
  end


end
