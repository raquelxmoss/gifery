class Gif < ActiveRecord::Base
  has_many :user_gifs
  has_many :users, through: :user_gifs

  validates :url, uniqueness: true

  def is_gifv?
    self.url.include?('webm') || self.url.include?('gifv')
  end


end
