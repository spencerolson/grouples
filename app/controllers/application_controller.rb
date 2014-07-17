class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers
  before_action :require_login
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
    unless signed_in?
      flash[:error] = "You must be logged in to acccess this section"
      redirect_to new_session_path
    end
  end
end
