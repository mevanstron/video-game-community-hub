class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :require_login, only: [:show, :edit, :update, :destroy]


  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.valid?
      login(@user)
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :nickname, :password, :password_confirmation)
  end

  def set_user
    @user = User.find_by(id: params[:id])
  end
end
