class GifsController < ApplicationController

  def index
    @gifs = Gif.all
  end

  def show
    @gif = Gif.find(params[:id])
  end

  def new
    @gif = Gif.new
    @tag = Tag.new
  end

  def create
    if @gif = Gif.find_or_create_by(gif_params)
      create_tags
      redirect_to gifs_path
    else
      render :new
    end
  end

  private

  def gif_params
    params.require(:gif).permit(:url)
  end

  def create_tags
    @gif.tags.create(name: params[:gif][:tags][:name])
  end

end
