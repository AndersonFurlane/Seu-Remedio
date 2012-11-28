require 'factory_girl'

FactoryGirl.define do
  factory :user do
    last_name { Faker::Lorem.name }
    first_name { Faker::Lorem.name }
    email { "andersonfurlanemartins@gmail.com"}
    password { Faker::Lorem.words(8) }
    password_confirmation { password }
  end
end