class SessionsController < ApplicationController

  def new
  end

  def create_by_auth
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
      u.password = SecureRandom.urlsafe_base64
    end
    login(@user)
    redirect_to user_path(@user)
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      login(@user)
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
