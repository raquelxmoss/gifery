class Gif < ActiveRecord::Base
  belongs_to :user
  has_many :tags
  accepts_nested_attributes_for :tags
end
