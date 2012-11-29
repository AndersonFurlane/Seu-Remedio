require 'spec_helper'

describe 'User' do

  it 'should have a valid factory' do
    FactoryGirl.create(:user).should be_valid
  end

  it 'should have full_name' do
    user = FactoryGirl.create(:user)
    user.full_name.should == "#{user.first_name} #{user.last_name}"
  end

end