FactoryGirl.define do
  
  factory :customer do
    sequence(:email) { |n| "rubyrodd#{n}@supergre.en" }
    name "Ruby"
  end

end
