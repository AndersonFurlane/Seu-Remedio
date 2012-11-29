require 'spec_helper'

describe RemindersController do
  before do
    @reminder = FactoryGirl.create(:reminder)
    @user = @reminder.user
  end

  describe 'Test Templete' do
    describe 'GET #index' do
      it 'populates an hash of reminder' do
        sign_in @user
        get :index
        assigns(:reminder).should
      end

    end

    describe 'GET :edit' do

      it 'should render the edit template' do
        sign_in @user
        session[:user_id]
        get :edit, { id: @reminder.id }
        response.should render_template('edit')
      end

    end

    describe 'GET :new' do

      it 'should render the new template' do
        sign_in @user
        session[:user_id]
        get :new
        response.should render_template('new')
      end

    end
  end

  describe 'Test New' do

    it 'should have the @reminder variable' do
      sign_in @user
      get :new
      assigns[:reminder].should_not be_nil
    end

    it 'should have the @reminder variable' do
      sign_in @user
      post :create
      assigns[:reminder].should_not be_nil
    end

    it 'populates an array of reminders' do
      sign_in @user
      post :create
      assigns[:reminders] == [@reminder]
    end

  end

  describe 'Test Destroy' do

    it 'deletes the selected reminder' do
      delete :destroy, { id: @reminder.id }
      assigns(:reminders).should be_nil
      Reminder.exists?(@reminder.id)
    end

  end
end