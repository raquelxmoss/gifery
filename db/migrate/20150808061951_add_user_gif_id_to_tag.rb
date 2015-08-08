class AddUserGifIdToTag < ActiveRecord::Migration
  def change
    add_column :tags, :user_gif_id, :integer
    remove_column :tags, :gif_id
  end
end
