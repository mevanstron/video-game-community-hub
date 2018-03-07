class SessionsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def new
  end

  def create
    if auth
      @user = User.find_or_create_by(uid: auth['uid']) do |u|
        u.name = auth['info']['name']
        u.email = auth['info']['email']
        u.image = auth['info']['image']
        u.password = SecureRandom.urlsafe_base64
      end
      authenticated = true
    else
      @user = User.find_by(email: params[:email])
      authenticated = @user.authenticate(params[:password])
    end

    if @user && authenticated
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

  private

  def auth
    request.env['omniauth.auth']
  end
end
