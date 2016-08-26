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
  end

end
