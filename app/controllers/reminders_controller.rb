class RemindersController < ApplicationController

  layout 'user'

  before_filter :authenticate_user!

  def index
    @reminders = current_user.reminders
  end

end