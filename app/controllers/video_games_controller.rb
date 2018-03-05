class VideoGamesController < ApplicationController
  before_action :set_video_game, only: [:show, :edit, :update]
  def index
    @video_games = VideoGame.all
  end

  def new
    @video_game = VideoGame.new
    @tags = Tag.all
  end

  def create
    @video_game = VideoGame.create(video_game_params)

    if @video_game.valid?
      redirect_to video_game_path(@video_game)
    else
      render :new
    end
  end

  def show
  end

  def edit
    @tags = Tag.all
  end

  def update
    @video_game.update(video_game_params)

    if @video_game.valid?
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
