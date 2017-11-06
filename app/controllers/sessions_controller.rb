class SessionsController < ApplicationController

  def new
  end


  def create
    #user = User.find_by(email: params[:session][:email].downcase)
    #user = User.where("email = ? or username = ?",params[:session][:email], params[:session][:email]).first
    user = User.where(email: params[:session][:email]).or(User.where(username: params[:session][:email])).first
    if user
      if user.authenticate(params[:session][:password])
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        if superadmin_or_admin? user
          redirect_back_or adminboard_path
        else
          redirect_back_or user
        end
      else
        # create and error message
        flash.now[:danger] ="Mot de passe incorrect pour cet utilisateur"
        render 'new'
      end
    else
      flash.now[:danger] ="Cet utilisateur n'existe pas!"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
