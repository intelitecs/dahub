module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # log any user out
  def log_out
    session.delete(:user_id)
    session[:user_id] = nil
  end

  # Returns true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end



end
