class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  def is_authenticated
  unless current_user
    flash[:danger] = "Credentials Invalid!!"
    redirect_to login_path
    end
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def is_admin
    unless current_user.account == 'admin'
      flash[:danger] = "No Admin Access!"
      redirect_to profile_path
    end
  end


end
