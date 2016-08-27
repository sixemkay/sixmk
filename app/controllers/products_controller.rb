class ProductsController < ApplicationController

  
  def index
    
  end


  def show
    @product = Product.find_by_id(params[:id])
    redirect_to root_url if @product.nil?
  end


  def thankyou
    @product = Product.find_by_id(params[:id])
    redirect_to root_url if @product.nil?
  end


end
