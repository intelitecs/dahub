class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # Return the current logged-in user (if any)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

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
