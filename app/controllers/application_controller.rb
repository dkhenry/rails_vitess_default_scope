class ApplicationController < ActionController::Base
  before_filter :set_current_user
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def set_current_user
    User.current = current_user
  end
end
