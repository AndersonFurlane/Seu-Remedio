require 'factory_girl'

FactoryGirl.define do
  factory :reminder do
    name { Faker::Name.name }
    time { Time.now }
    days { rand(10) + 1 }
    start_at { Date.today }

    user
  end
end