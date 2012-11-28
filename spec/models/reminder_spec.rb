 require 'spec_helper'

describe 'Reminder' do
  xit 'should have a valid factory' do
    FactoryGirl.create(:reminder).should be_valid
  end
  it 'should have name' do
    FactoryGirl.build(:reminder, name: nil).should_not be_valid
  end
  it 'should have time' do
    FactoryGirl.build(:reminder, time: nil).should_not be_valid
  end
  it 'should have days' do
    FactoryGirl.build(:reminder, days: nil).should_not be_valid
  end
  it 'should have start date' do
    FactoryGirl.build(:reminder, start_at: nil).should_not be_valid
  end
  it 'should belong to user' do
    FactoryGirl.build(:reminder, user: nil).should_not be_valid
  end
end