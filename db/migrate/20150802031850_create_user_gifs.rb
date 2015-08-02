class CreateUserGifs < ActiveRecord::Migration
  def change
    create_table :user_gifs do |t|
      t.references :user, index: true, foreign_key: true
      t.references :gif, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
