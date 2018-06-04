class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :user_video_game_review

  private

  def login(user)
    session[:user_id] = user.id
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

  def user_video_game_review(video_game)
    current_user.reviews.find_by(video_game_id: video_game.id)
  end

  def prevent_duplicate_review
    return head(:forbidden) if user_video_game_review(VideoGame.find(params[:video_game_id]))
  end
end
