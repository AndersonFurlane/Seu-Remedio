class Login::ContatoController < Login::BaseController

  before_filter :authenticate_user!

  def index
  end
end
