FactoryGirl.define do
  
  factory :client do
    sequence(:email) { |n| "rubyrodd#{n}@supergre.en" }
    sequence(:name) { |n| "rubyrodd#{n}" }
  end

end
