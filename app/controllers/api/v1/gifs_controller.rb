class Api::V1::GifsController < ApplicationController
  respond_to :json

  def show
    respond_with Gif.find(params[:id])
  end

  def index
    respond_with Gif.all
  end


end
