require 'rails_helper'

RSpec.describe Client do
  
  
  before :each do
    @client = FactoryGirl.build(:client)
  end

  specify { expect(@client).to be_valid }

  
  describe "email" do
    it "should be present" do
      @client.email = ""
      expect(@client).to be_invalid

      @client.email = "notblank@fdsa.asdf"
      expect(@client).to be_valid
    end

    it "should be unique" do
      persisted_client = @client.dup
      persisted_client.save

      client2 = FactoryGirl.build(:client, email: persisted_client.email)
      expect(client2).to be_invalid

      client2.email = "korbind@zorg.com"
      expect(client2).to be_valid

      persisted_client.delete
    end
  end


  describe "name" do
    it "should be present" do
      @client.name = ""
      expect(@client).to be_invalid

      @client.name = "Awesome person"
      expect(@client).to be_valid
    end
  end

end
