class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:email_or_username]) || User.find_by(username: params[:email_or_username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user, notice: "Welcome Back, #{user.name}!"
    else
      flash.now[:alert] = "Invalid email/password combo"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to movies_url, notice: "See ya later!"
  end
end