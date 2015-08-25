class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :url
      t.timestamps null: false
    end

    create_table :gifs_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :gif, index: true
    end
  end
end