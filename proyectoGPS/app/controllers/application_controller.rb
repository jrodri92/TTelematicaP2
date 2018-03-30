class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :find_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def find_user
    if !current_user
      redirect_to(root_path)
    end
  end

end
