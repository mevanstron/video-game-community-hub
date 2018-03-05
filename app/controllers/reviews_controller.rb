class ReviewsController < ApplicationController

  def index
    if params[:video_game_id]
      @reviews = VideoGame.find(params[:video_game_id]).reviews
      @video_game = VideoGame.find(params[:video_game_id])
    else
      @reviews = Review.all
    end
  end
  def new
    if params[:video_game_id]
      @review = VideoGame.find(params[:video_game_id]).reviews.build
    else
      @review = Review.new
    end
  end

  def create

    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.save
    if @review && @review.valid?
      redirect_to video_game_path(@review.video_game)
    else
      render :new
    end
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

  def review_params
    params.require(:review).permit(:title, :rating, :content, :video_game_id)
  end
end
