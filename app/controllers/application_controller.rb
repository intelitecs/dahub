class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # Return the user corresponding to the remember token cookie.
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(:remember, cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end

  end

  #Returns true if the given user is the current user.
  def current_user?(user)
    user == current_user
  end
  helper_method :current_user?

  helper_method :current_user

  def superadmin_or_admin?(user)
    superadminProfile = Profile.find_by!(name: "superadmin")
    adminProfile = Profile.find_by!(name: "admin")
    user.profiles.include?(superadminProfile) || user.profiles.include?(adminProfile)
  end

  helper_method :superadmin_or_admin?



  private
    def user_not_authorized
      flash[:warning] = "You are not authorized to perform this action"
      redirect_to(request.referrer || root_path)
    end
end
