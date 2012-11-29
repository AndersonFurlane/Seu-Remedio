require 'spec_helper'

describe ContactsController do
  before do
    @contact = FactoryGirl.build(:contact)
    @reminder = FactoryGirl.create(:reminder)
    @user = @reminder.user
  end

  describe 'test templete' do

    it 'should render the edit template' do
      sign_in @user
      session[:user_id]
      get :new
      response.should render_template('new')
    end

  end

  describe 'methods' do

    it 'GET #new populates the contact' do
      sign_in @user
      get :new
      assigns[:contact].should_not be_nil
    end

  end
end
