class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  before_action :set_current_user
  helper_method :current_user

  def set_current_user
    @current_user = Mixer.find_by(id: session[:mixer_id])
  end

  def current_user
    @current_user
  end
end
