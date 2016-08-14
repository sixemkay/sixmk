FactoryGirl.define do
  
  factory :client do
    sequence(:email) { |n| "rubyrodd#{n}@supergre.en" }
    business_name "Intergalactic MCs"
    first_name "Ruby"
    last_name "Rodd"
  end

end
