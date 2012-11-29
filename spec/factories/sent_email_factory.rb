require 'spec_helper'

FactoryGirl.define do
  factory :sent_email do
    time { Time.now }
    completed { [true, false, nil].sample }
    reminder_id { 1 }
  end
end