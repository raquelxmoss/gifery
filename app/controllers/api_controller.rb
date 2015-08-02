class ApiController < ActionController::Base

  def save_gif
    # http://localhost:3000/api/v1/save-gif?url=http://editorial.designtaxi.com/editorial-images/news-lovesleep290715/2-love-sleep.jpg&user_id=1
    if @gif = Gif.create(url: params[:url], user_id: params[:user_id])
      render json: @gif
    else
      render json: {
        error: "Sorry, something went wrong with your request. Please check the API documentation and try again.",
        status: 400
      },
      status: 400
    end
  end

  def tag_gif

  end

  def delete_gif
  end

  def delete_tag
  end

end