require 'rails_helper'

RSpec.describe Address do
  
  
  before :each do
    @address = FactoryGirl.build(:address)
  end

  specify { expect(@address).to be_valid }

  
  describe "city" do
    it "should be present" do
      @address.city = nil
      expect(@address).to be_invalid

      @address.city = "Sacramento"
      expect(@address).to be_valid
    end
  end


  describe "country" do
    it "should be present" do
      @address.country = nil
      expect(@address).to be_invalid

      @address.country = "US of A"
      expect(@address).to be_valid
    end
  end


  describe "line1" do
    it "should be present" do
      @address.line1 = nil
      expect(@address).to be_invalid

      @address.line1 = "321 Contact"
      expect(@address).to be_valid
    end
  end


  describe "state" do
    it "should be present" do
      @address.state = nil
      expect(@address).to be_invalid

      @address.state = "CA"
      expect(@address).to be_valid
    end
  end


  describe "zip" do
    it "should be present" do
      @address.zip = nil
      expect(@address).to be_invalid

      @address.zip = "12384"
      expect(@address).to be_valid
    end

    it "should be a number" do
      @address.zip = "words words words"
      expect(@address).to be_invalid

      @address.zip = "5435324324"
      expect(@address).to be_valid
    end
  end

end
