class GifsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :show]

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
    if @gif = UserGif.create(user: current_user, gif: Gif.find_or_create_by(gif_params))
      create_tags(@gif.gif)
      redirect_to gifs_path
    else
      render :new
    end
  end

  private

  def gif_params
    params.require(:gif).permit(:url)
  end

  def create_tags(gif)
    tag_string = params[:gif][:tags][:name]
    tag_string.split(",").each do |tag|
      gif.tags.create(name: tag.strip)
    end
  end

end
