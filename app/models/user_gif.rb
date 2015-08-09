class UserGif < ActiveRecord::Base
  belongs_to :user
  belongs_to :gif
  has_many :tags

  validates_uniqueness_of :gif_id, scope: [:user_id, :gif_id]

end