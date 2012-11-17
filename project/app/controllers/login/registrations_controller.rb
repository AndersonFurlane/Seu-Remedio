class Login::RegistrationsController < Devise::RegistrationsController

  layout 'user'
  before_filter :authenticate_user!

  def index
  end

  def new

  end

  def edit
    @user = User.find(params[:id])
  end

end
