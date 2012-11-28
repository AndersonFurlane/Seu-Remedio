require 'spec_helper'

describe 'SentEmail' do
  it 'should have a valid sent_email' do
    FactoryGirl.create(:sent_email).should be_valid
  end
  it 'should have time' do
    FactoryGirl.build(:sent_email, time: nil).should_not be_valid
  end
  it 'should have nil, true or false' do
    FactoryGirl.build(:sent_email, completed: nil).should be_valid
    FactoryGirl.build(:sent_email, completed: true).should be_valid
    FactoryGirl.build(:sent_email, completed: false).should be_valid
  end
  it 'should have reminder_id' do
    FactoryGirl.build(:sent_email, reminder_id: rand(999)).should be_valid
  end
end