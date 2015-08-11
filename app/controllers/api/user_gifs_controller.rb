class Api::UserGifsController < ApplicationController

  def create
    if @gif = UserGif.create(gif: Gif.find_or_create_by(url: params[:url]), user: User.find(params[:user_id]))
      render json: @gif
    else
      generic_error
    end
  end

  def new
  end

  def destroy
    if gif = UserGif.find_by(id: params[:id])
      gif.destroy
      render json: {
        message: "Gif deleted"
      }
    else
      generic_error
    end
  end

  def show
    @gif = UserGif.find_by(id: params[:id])
    render json: @gif
  end

  private

  def generic_error
    render json: {
      error: "Sorry, something went wrong with your request. Please check the API documentation and try again"
    }
  end

end