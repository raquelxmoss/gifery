class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :url
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
