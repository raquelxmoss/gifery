class Api::V1::GifsController < ApplicationController
  before_action :authenticate_with_token!
  respond_to :json

  def show
    respond_with Gif.find(params[:id])
  end

  def index
    respond_with current_user.gifs
  end

  def create
    user = User.find(params[:user_id])
    if gif = user.gifs.create(gif_params)
      render json: gif, status: 200
    else
      render json: { errors: gif.errors }, status: 422
    end
  end

  private

  def gif_params
    params.require(:gif).permit(:url)
  end


end
