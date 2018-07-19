class UserVideoGamesController < ApplicationController
  before_action :require_login

  def create
    @user_video_game = UserVideoGame.create(user_id: current_user.id , video_game_id: params[:video_game_id])

    respond_to do |format|
      format.html { redirect_to video_games_path }
      format.json { render json: @post, status: 201 }
    end
  end

  def destroy
    UserVideoGame.find_by(user_id: current_user.id , video_game_id: params[:id]).destroy
    redirect_to user_path(current_user)
  end
end
