class SessionsController < ApplicationController

  def new
  end


  def create
    #user = User.find_by(email: params[:session][:email].downcase)
    user = User.where("email = ? or username = ?",params[:session][:email], params[:session][:email]).first
    #user =   User.find_by_email_or_username(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      if superadmin_or_admin? user
        redirect_back_or adminboard_path
      else
        redirect_back_or user
      end
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
