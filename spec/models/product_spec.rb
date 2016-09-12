require 'rails_helper'

RSpec.describe Product do
  
  
  before :each do
    @product = FactoryGirl.build(:product)
  end

  specify { expect(@product).to be_valid }

  
  describe "description" do
    it "should be present" do
      @product.description = nil
      expect(@product).to be_invalid

      @product.description = "A mother 'effing TimeLord"
      expect(@product).to be_valid
    end
  end


  describe "in_stock_counter" do
    it "should be present" do
      @product.in_stock_counter = nil
      expect(@product).to be_invalid

      @product.in_stock_counter = 0
      expect(@product).to be_valid
    end
  end


  describe "name" do
    it "should be present" do
      @product.name = nil
      expect(@product).to be_invalid

      @product.name = "The Doctor"
      expect(@product).to be_valid
    end
  end


  describe "price" do
    it "should be present" do
      @product.price = nil
      expect(@product).to be_invalid

      @product.price = 12.to_d
      expect(@product).to be_valid
    end

    it "should be greater than or equal to $1" do
      @product.price = 0.to_d
      expect(@product).to be_invalid

      @product.price = 0.50.to_d
      expect(@product).to be_invalid

      @product.price = 1.to_d
      expect(@product).to be_valid

      @product.price = 2.50.to_d
      expect(@product).to be_valid
    end
  end


  describe "slug" do
    it "should be the product's name with '-'s in place non-word characters" do
      @product.name = "Web, Tablet, and Mobile (Responsive) Sketchbook"
      expect(@product.slug).to eq("Web-Tablet-and-Mobile-Responsive-Sketchbook")

      @product.name = "Foo Bar 123!"
      expect(@product.slug).to eq("Foo-Bar-123-")
    end
  end


  describe "sold_counter" do
    it "should be present" do
      @product.sold_counter = nil
      expect(@product).to be_invalid

      @product.sold_counter = 0
      expect(@product).to be_valid
    end
  end


  describe "to_param" do
    it "should be the id then the result of 'slug' with a '-' inbetween" do
      @product.name = "Web, Tablet, and Mobile (Responsive) Sketchbook"
      @product.save
      expect(@product).to be_persisted
      expect(@product.to_param).to eq("#{@product.id}-Web-Tablet-and-Mobile-Responsive-Sketchbook")
      @product.destroy
    end
  end

end
