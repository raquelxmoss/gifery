class Tag < ActiveRecord::Base
  belongs_to :gif
  validates :name, uniqueness: true
  before_create :downcaseify

  def downcaseify
    self.name = self.name.downcase
  end

end
