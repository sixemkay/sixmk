require 'rails_helper'

RSpec.describe ProductImage do
  
  
  before :each do
    @product_image = FactoryGirl.create(:product_image)
  end


  after :each do
    product = @product_image.product
    @product_image.destroy
    product.destroy
  end


  specify { expect(@product_image).to be_valid }

  
  describe "default sort order" do
    it "should be sorted by ordinal ascending by default" do
      product_image2 = @product_image.dup
      product_image2.ordinal = 3
      product_image2.save

      product_image3 = @product_image.dup
      product_image3.ordinal = 2
      product_image3.save

      product = @product_image.product
      expect(product.product_images.count).to eq(3)
      expect(@product_image.ordinal).to eq(1)
      expect(product_image2.ordinal).to eq(3)
      expect(product_image3.ordinal).to eq(2)

      expect(product.product_images.first).to eq(@product_image)
      expect(product.product_images.second).to eq(product_image3)
      expect(product.product_images.third).to eq(product_image2)

      product_image2.destroy
      product_image3.destroy
    end
  end


  describe "ordinal" do
    it "should be present" do
      @product_image.ordinal = nil
      expect(@product_image).to be_invalid

      @product_image.ordinal = 1
      expect(@product_image).to be_valid
    end

    it "should be greater than or equal to 1" do
      @product_image.ordinal = -1
      expect(@product_image).to be_invalid

      @product_image.ordinal = 0
      expect(@product_image).to be_invalid

      @product_image.ordinal = 1
      expect(@product_image).to be_valid

      @product_image.ordinal = 1000
      expect(@product_image).to be_valid
    end
  end


  describe "product" do
    it "should be present" do
      @product_image.product = nil
      expect(@product_image).to be_invalid

      @product_image.product = FactoryGirl.build(:product)
      expect(@product_image).to be_valid
    end
  end


  describe "url_square_600" do
    it "should be present" do
      @product_image.url_square_600 = nil
      expect(@product_image).to be_invalid

      @product_image.url_square_600 = "google.com"
      expect(@product_image).to be_valid
    end
  end


  describe "url_square_1200" do
    it "should be present" do
      @product_image.url_square_1200 = nil
      expect(@product_image).to be_invalid

      @product_image.url_square_1200 = "google.com"
      expect(@product_image).to be_valid
    end
  end
  

end
