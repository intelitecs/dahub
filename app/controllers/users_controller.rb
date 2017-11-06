class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user, only: [:show, :edit, :update, :destroy, :correct_user]
  before_action :set_default_user_profile, only: [:create]
  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: [:destroy, :index]
  #before_action :admin_user?, only: [:edit, :update]
  wrap_parameters :user, include: [:username, :email, :password, :password_confirmation]

  # GET /users
  # GET /users.json
  def index
    @users = User.paginate(page: params[:page])
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        UserProfile.create!({user: @user, profile: @default_profile})
        log_in @user
        format.html {
          flash.now[:success] = "Bienvenu sur Dahub!"
          redirect_to @user
        }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html {
          flash.now[:success] = "Profile mis à jour avec succès!"
          redirect_to @user

        }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html {
        flash[:success] = "Utilisateur supprimé avec succès"
        redirect_to users_url
      }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Before filters
    # Confirms a logged-in-user.
    def logged_in_user
      unless logged_in?
        store_location
        flash.now[:danger] = "Connectez-vous s'il vous plaît."
        redirect_to login_url
      end
    end

    # Confirms the correct user
    def correct_user
       #@user = User.find(params[:id])
       unless current_user?(@user)
         flash.now[:danger] = "Vous n'avez pas suffisament de droits pour accéder à cette page"
         redirect_to(root_url)
       end
    end

  def admin_user
    unless superadmin_or_admin?(current_user)
      flash.now[:danger] = "Vous n'avez pas suffisament de droits pour accéder à cette page"
      redirect_to(root_url)
    end
  end

    def set_default_user_profile
      @default_profile = Profile.find_by_name("user")
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :confirmation_token, :confirmed_at, :confirmation_sent_at, :last_passwd_reset_at, :enabled, :passwd_reset_token, :passwd_reset_token_sent_at)
    end
end
