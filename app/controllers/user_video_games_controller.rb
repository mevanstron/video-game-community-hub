class UserVideoGamesController < ApplicationController
  def create
    @user_video_game = UserVideoGame.create(user_id: current_user.id , video_game_id: params[:video_game_id])
    redirect_to user_path(current_user)
  end

  def destroy
  end
end
