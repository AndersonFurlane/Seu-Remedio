require 'spec_helper'

describe RemindersController do
  before do
    @reminder = FactoryGirl.create(:reminder)
    @sent_email = FactoryGirl.create(:sent_email)
    @user = @reminder.user
    @sent_email.reminder_id = @reminder.id
  end

  describe 'test templete' do
    it 'render #index' do
      sign_in @user
      get :index
      response.should render_template('index')
    end

    it 'render #edit' do
      sign_in @user
      get :edit, { id: @sent_email.id }
      response.should render_template('edit')
    end
  end

  describe 'test #edit' do
    it 'should have the @sent_email variable' do
      sign_in @user
      get :edit, {id: @sent_email.id}
      assigns[:sent_email].should be_nil
    end
  end

  describe 'test #index' do
    it 'should have the @sent_email variable' do
      sign_in @user
      get :index
      assigns[:sent_email].should be_nil
    end
  end
end