class SessionsController < ApplicationController

  def new
  end


  def create
    user = User.where(email: params[:session][:email].downcase).or(User.where(username: params[:session][:email].downcase)).first
    respond_to do |format|
      if user

        if user.authenticate(params[:session][:password])
          format.html {
            log_in user
            params[:session][:remember_me] == '1' ? remember(user) : forget(user)
            if superadmin_or_admin? user
              redirect_back_or adminboard_path
            else
              redirect_back_or user
            end
          }
          format.json {
            auth_token = JsonWebToken.encode({user_id: user.id})
            render json: {auth_token: auth_token, username: user.username, user_id: user.id}, status: :ok
          }
        else
          # create and error message
          format.html {
            flash.now[:danger] ="Mot de passe incorrect pour cet utilisateur"
            render 'new'
          }
          format.json{
            render json: {error: "Mot de passe incorrect"}, status: :unauthorized
          }
        end
      else
        format.html{
          flash.now[:danger] ="Cet utilisateur n'existe pas!"
          render 'new'
        }
        format.json{
          render json: {error: "Cet utilisateur n'existe pas!"}, status: :unauthorized
        }
      end
    end

  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
