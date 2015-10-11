class Gif < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :url, presence: true
  validates_uniqueness_of :url, scope: :user_id
end
