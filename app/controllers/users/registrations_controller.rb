class Users::RegistrationsController < Devise::RegistrationsController

  layout 'user'
  before_filter :authenticate_user!

  def new

  end

  def edit
  end

end