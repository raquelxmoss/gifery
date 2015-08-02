class UserGif < ActiveRecord::Base
  belongs_to :user
  belongs_to :gif

  validates_uniqueness_of :gif_id, scope: [:user_id, :gif_id]

end