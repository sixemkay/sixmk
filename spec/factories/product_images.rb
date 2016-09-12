FactoryGirl.define do
  
  factory :product_image do
    ordinal 1
    product { FactoryGirl.build(:product) }
    url_square_600 "google.com"
    url_square_1200 "google.com"
  end

end
