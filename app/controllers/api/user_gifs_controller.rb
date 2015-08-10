class Api::UserGifsController < ApplicationController

  def create
    if @gif = UserGif.create(gif: Gif.find_or_create_by(url: params[:url]), user: User.find(params[:user_id]))
      render json: @gif
    else
      render json:
      {
        error: "Sorry, something went wrong with your request. Please check the API documentation and try again."
      }
    end
  end

  def new
  end

  def destroy
  end

  def show
  end

end