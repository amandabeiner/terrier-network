FactoryGirl.define do 
  factory :user do
    first_name "user"
    last_name "mcuserface"
    sequence(:email) { |n| "user#{n}@bu.edu" }
    password "password"
  end
end
