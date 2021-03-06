class VideoGamesController < ApplicationController
  before_action :set_video_game, only: [:show, :edit, :update]
  before_action :require_login

  def index
    @video_games = VideoGame.all

    respond_to do |format|
      format.html
      format.json { render json: @video_games }
    end
  end

  def new
    @video_game = VideoGame.new
    @tags = Tag.all
  end

  def create
    @video_game = VideoGame.create(video_game_params)
    @tags = Tag.all

    if @video_game.valid?
      redirect_to video_game_path(@video_game)
    else
      render :new
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @video_game }
    end
  end

  def edit
    @tags = Tag.all
  end

  def update
    @tags = Tag.all

    if @video_game.update(video_game_params)
      redirect_to @video_game
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def video_game_params
    params.require(:video_game).permit(:title, :release_year, :console, tag_ids:[], tags_attributes:[:name])
  end

  def set_video_game
    @video_game = VideoGame.find_by(id: params[:id])
  end
end
