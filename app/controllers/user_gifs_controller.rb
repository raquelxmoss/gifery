class UserGifsController < ApplicationController

  before_action :authenticate_user!
  before_action :load_user_and_gif, only: [:show, :update, :edit, :destroy]

  def index
    @gifs = UserGif.where(user: current_user).collect(&:gif)
  end

  def show
  end

  def new
    @gif = UserGif.new(user: current_user)
  end

  def create
    if @gif = UserGif.create(user: current_user, gif: Gif.find_or_create_by(url: user_gif_params[:url]))
      render :show, id: @gif.id
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @gif.update(user_gif_params)
      render :show, id: @gif.id
    else
      render :edit, id: @gif.id
    end
  end

  def destroy
    if @gif.destroy
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  private

  def user_gif_params
    # params.require(:user_gif).permit(:url) ???
  end

  def load_user_and_gif
    @gif = UserGif.find(params[:id]).gif
    @user = current_user
  end

  # def create_tags(gif)
  #   tag_string = params[:gif][:tags][:name]
  #   tag_string.split(",").each do |tag|
  #     gif.tags.create(name: tag.strip)
  #   end
  # end

end