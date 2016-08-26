class ProductsController < ApplicationController

  
  def index
    
  end


  def show
    @product = Product.find_by_id(params[:id])
    if @product.nil?
      redirect_to root_url
    end
  end


end
