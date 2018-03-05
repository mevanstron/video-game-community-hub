class ReviewsController < ApplicationController
  def new
    if params[:video_game_id]
      @review = VideoGame.find(params[:video_game_id]).reviews.build
    else
      @review = Review.new
    end
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
