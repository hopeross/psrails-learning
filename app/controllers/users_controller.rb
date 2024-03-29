class UsersController < ApplicationController
  before_action :require_signin, except: [:new, :create]
  before_action :require_correct_user, only: [:edit, :update, :destroy]

  def index
    # @users = User.all
    @users = User.not_admin
  end

  def new
    @user = User.new
  end

  def show
    # @user = User.find_by!(slug: params[:id])
    @user = User.find(params[:id])
    @reviews = @user.reviews
    @favorite_movies = @user.favorite_movies
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "Thanks for Signing Up!"
    else
      render :new
    end
  end

  def edit
    # This page intentionally left blank
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "Account changes saved"
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    session[:user_id] = nil
    redirect_to movies_url, alert: "User successfully deleted!"
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end

  def require_correct_user
    @user = User.find(params[:id])
    redirect_to root_url unless current_user?(@user)
  end
end
