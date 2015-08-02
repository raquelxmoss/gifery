class CreateUserGifs < ActiveRecord::Migration
  def change
    create_table :user_gifs do |t|
      t.belongs_to :user, index: true
      t.belongs_to :gif, index: true

      t.timestamps null: false
    end
  end
end
