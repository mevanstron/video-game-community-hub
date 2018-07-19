class TagsController < ApplicationController
  before_action :require_login
  def index
    @tags = Tag.all
    @tag = Tag.new
  end

  def create
    @tags = Tag.all
    @tag = Tag.create(tag_params)

    render json: @tag, status: 201
    
    # if @tag.valid?
    #   redirect_to tags_path
    # else
    #   render :index
    # end
  end

  def show
    @tag = Tag.find(params[:id])
    @video_games = @tag.video_games
    # VideoGame.all.each do |video_game|
    #   @tag.video_games << videogame if video_game.tags.include?(@tag) && !@tag.video_games.include?(video_game)
    # end

    respond_to do |format|
      format.html
      format.json { render json: @tag }
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
