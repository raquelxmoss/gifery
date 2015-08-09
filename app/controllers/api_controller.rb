class ApiController < ActionController::Base

  def save_gif
    # http://localhost:3000/api/v1/save-gif?url=http://editorial.designtaxi.com/editorial-images/news-lovesleep290715/2-love-sleep.jpg&user_id=1
    if @gif = UserGif.create(gif: Gif.find_or_create_by(url: params[:url]), user: User.find(params[:user_id]))
      render json: @gif
    else
      render json:
      {
        error: "Sorry, something went wrong with your request. Please check the API documentation and try again."
      }
    end
  end

  def tag_gif

  end

  def delete_gif
    if gif = UserGif.find_by(id: params[:id])
      gif.destroy
      render json: {
        message: "Gif deleted"
      }
    else
      render json: {
        error: "Sorry, we couldn't find that gif"
      }
    end
  end

  def delete_tag

  end

end