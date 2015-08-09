class Gif < ActiveRecord::Base
  has_many :user_gifs
  has_many :users, through: :user_gifs

  validates :url, uniqueness: true
end
