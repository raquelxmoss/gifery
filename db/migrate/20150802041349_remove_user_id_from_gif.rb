class RemoveUserIdFromGif < ActiveRecord::Migration
  def change
    remove_column :gifs, :user_id
  end
end


details = details.to_a

details.each_with_index do |hash, index|
  meal_ingredients.each do |measurement|
    details[index][1]["quantity"] = meal_ingredients[index].quantity
    details[index][1]["measurement"] = meal_ingredients[index].measurement
  end
end
