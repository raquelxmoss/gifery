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
    @gif = Gif.new
  end

  private

  def tag_attributes=(attributes)
  end

end
