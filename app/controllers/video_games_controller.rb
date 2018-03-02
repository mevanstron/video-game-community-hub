class VideoGamesController < ApplicationController
  def index
    @video_games = VideoGame.all
  end

  def new
    @video_game = VideoGame.new
  end

  def create
    #raise params.inspect

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
  end

  def update
  end

  def destroy
  end

  private

  def video_game_params
    params.require(:video_game).permit(:title, :release_year, :console)
  end
end
