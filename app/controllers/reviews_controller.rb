class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_video_game, only: [:index, :new, :create, :show, :edit, :update]
  before_action :require_login, only: [:index, :new, :create, :edit, :update, :destroy]
  before_action :prevent_duplicate_review, only: [:new]

  def index
    @reviews = @video_game.reviews
  end

  def new
    @review = @video_game.reviews.build
  end

  def create
    @review = Review.new(review_params) do |r|
      r.user_id = current_user.id
      r.save
    end

    if @review && @review.valid?
      redirect_to video_game_review_path(@video_game, @review)
    else
      render :new
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @review }
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to video_game_review_path(@video_game, @review)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to user_path(current_user)
  end

  private

  def set_video_game
    @video_game = VideoGame.find(params[:video_game_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :rating, :content, :video_game_id)
  end
end
