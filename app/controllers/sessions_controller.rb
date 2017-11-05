class SessionsController < ApplicationController

  def new
  end


  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if superadmin_or_admin? user
        redirect_to adminboard_path
      else
        redirect_to user
      end
      # Log the user in and redirect to the user's show page
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
    else
      # create and error message
      flash.now[:danger] ="Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
