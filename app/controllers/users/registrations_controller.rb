class Users::RegistrationsController < Devise::RegistrationsController

  layout 'application'
  before_filter :authenticate_user!

  def new

  end

  def edit

  end

end