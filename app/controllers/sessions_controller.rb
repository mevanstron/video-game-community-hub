class SessionsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @error_message = "Email / Password combination is incorrect"
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end
end
