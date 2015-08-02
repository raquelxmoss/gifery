class Gif < ActiveRecord::Base
  has_many :users
  has_many :users, through: :user_gifs
  has_many :tags

  validates :url, uniqueness: true
end
