require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "GET show/:id" do

    before :each do
      FactoryGirl.create(:product)
    end

    after :each do
      Product.destroy_all
    end

    it "assigns @product" do
      get :show, id: Product.first.id
      expect(assigns(:product)).to eq(Product.first)
    end

    it "renders the show template" do
      get :show, id: Product.first.id
      expect(response).to render_template("show")
    end

    it "redirects to the root url if the product is not found" do
      get :show, id: 0
      expect(response).to redirect_to root_url
    end
  end


  describe "GET thankyou/:id" do

    before :each do
      FactoryGirl.create(:product)
    end

    after :each do
      Product.destroy_all
    end

    it "assigns @product" do
      get :thankyou, id: Product.first.id
      expect(assigns(:product)).to eq(Product.first)
    end

    it "renders the thankyou template" do
      get :thankyou, id: Product.first.id
      expect(response).to render_template("thankyou")
    end

    it "redirects to the root url if the product is not found" do
      get :show, id: 0
      expect(response).to redirect_to root_url
    end
  end

end
