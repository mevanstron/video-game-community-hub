module UsersHelper

  def user_video_game_review(video_game)
    current_user.reviews.find_by(video_game_id: video_game.id)
  end
end
