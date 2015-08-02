class RemoveUserIdFromGif < ActiveRecord::Migration
  def change
    remove_column :gifs, :user_id
  end
end
