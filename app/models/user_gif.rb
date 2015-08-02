class UserGif < ActiveRecord::Base
  belongs_to :user
  belongs_to :gif

  validates :gif_id, :uniqueness => {:scope=>:user_id}

end
