require 'factory_girl'

FactoryGirl.define do
  factory :contact do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    content { Faker::Lorem.words(500)}
  end
end