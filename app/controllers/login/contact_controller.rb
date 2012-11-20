class Login::ContactController < Login::BaseController

  before_filter :authenticate_user!

  def index
  end

end
