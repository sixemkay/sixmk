FactoryGirl.define do
  
  factory :product do
    description "It's a foo bar of buzzy proportions."
    in_stock_counter 5
    name "Foo Bar Product"
    price 100.to_d
    sold_counter 12
  end

end
