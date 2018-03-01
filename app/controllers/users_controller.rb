class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirm, :nickname)
  end

  def set_user
    @user = User.find_by(id: params[:id])
  end
end
