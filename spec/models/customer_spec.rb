require 'rails_helper'

RSpec.describe Customer do
  
  
  before :each do
    @customer = FactoryGirl.build(:customer)
  end

  specify { expect(@customer).to be_valid }

  
  describe "email" do
    it "should be present" do
      @customer.email = ""
      expect(@customer).to be_invalid

      @customer.email = "notblank@fdsa.asdf"
      expect(@customer).to be_valid
    end

    it "should be unique" do
      persisted_customer = @customer.dup
      persisted_customer.save

      customer2 = FactoryGirl.build(:customer, email: persisted_customer.email)
      expect(customer2).to be_invalid

      customer2.email = "korbind@zorg.com"
      expect(customer2).to be_valid

      persisted_customer.delete
    end
  end

end
