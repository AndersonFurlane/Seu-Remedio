class RemindersController < ApplicationController

  layout 'user'
  respond_to :html, :js

  before_filter :authenticate_user!

  def index
    @reminders = current_user.reminders
  end

  def new
  end

  def update
    @reminder = Reminder.find(params[:id])
    flash[:notice] = 'Post was successfully updated.' if @reminder.update_attributes(params[:reminder])
    respond_with @reminder, :location => reminders_path
  end

  def edit
    @reminder = Reminder.find(params[:id])
  end

  def create
    @reminder = Reminder.new(params[:reminder])
    @reminder.user_id = current_user[:id]
    flash[:notice] = 'Reminder registered successfully!' if @reminder.save
    respond_with @reminder, :location => reminders_path
  end

  def destroy
    @reminder = Reminder.find(params[:id])
    @reminder.destroy

    respond_with @reminder, :location => reminders_path
  end

end