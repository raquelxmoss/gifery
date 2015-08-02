class Gif < ActiveRecord::Base
  has_many :user_gifs
  has_many :users, through: :user_gifs
  has_many :tags

  validates :url, uniqueness: true
end
