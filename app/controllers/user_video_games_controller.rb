class UserVideoGamesController < ApplicationController
  def create
    @user_video_game = UserVideoGame.create(user_id: current_user.id , video_game_id: params[:video_game_id])
    redirect_to video_games_path
  end

  def destroy
    UserVideoGame.find_by(user_id: current_user.id , video_game_id: params[:id]).destroy
    redirect_to user_path(current_user)
  end
end
