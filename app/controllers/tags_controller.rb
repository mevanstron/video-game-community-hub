class TagsController < ApplicationController
  def index
    @tags = Tag.all
    @tag = Tag.new
  end

  def new
  end

  def create
    @tags = Tag.all
    @tag = Tag.create(tag_params)

    if @tag.valid?
      redirect_to tags_path
    else
      render :index
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    Tag.find(params[:id]).destroy
    redirect_to tags_path
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
