class Users::SessionsController < Devise::SessionsController

  layout 'application'
  before_filter :authenticate_user!

  def new
  end

  def edit
  end

end