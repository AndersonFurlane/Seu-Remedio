require 'spec_helper'

FactoryGirl.define do
  factory :sent_email do
    time { Time.now }
    completed {}
    reminder_id { 1 }
  end
end