class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:index, :new, :create, :edit, :update, :destroy]
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
      redirect_to video_game_review_path(@review.video_game, @review)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @review.update(review_params)

    if @review.valid?
      redirect_to video_game_review_path(@review.video_game, @review)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to user_path(current_user)
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :rating, :content, :video_game_id)
  end
end
