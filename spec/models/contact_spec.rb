require 'spec_helper'

describe 'Contact' do

  it 'should have a valid factory' do
    FactoryGirl.build(:contact).should be_valid
  end

  it 'should have name' do
    FactoryGirl.build(:contact, name: nil).should_not be_valid
  end

  it 'should have email' do
    FactoryGirl.build(:contact, email: nil).should_not be_valid
  end

  it 'should have content' do
    FactoryGirl.build(:contact, content: nil).should_not be_valid
  end

end