class Gif < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :url, uniqueness: true

  def is_gifv?
    self.url.include?('webm') || self.url.include?('gifv')
  end


end
