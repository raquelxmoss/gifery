class ApiController < ActionController::Base

  def save_gif
    # http://localhost:3000/api/v1/save-gif?url=http://editorial.designtaxi.com/editorial-images/news-lovesleep290715/2-love-sleep.jpg&user_id=1
    if @gif = Gif.create(url:params[:url], user_id:params[:user_id])
      render plain: "Success! #{@gif.url}"
    else
      render plain: "Sorry, something went wrong"
    end
  end

  def tag_gif

  end

end