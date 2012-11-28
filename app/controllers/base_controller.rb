class BaseController < ApplicationController

  layout 'application'

  before_filter :authenticate_user!

  respond_to :html
end