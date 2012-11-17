require 'factory_girl'

FactoryGirl.define do
  factory :reminder do
    name { Faker::Lorem.word }
    time { Time.now }
    days { rand(10) + 1 }
    start_at { Date.today }
  end
end