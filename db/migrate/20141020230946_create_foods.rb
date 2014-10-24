class CreateFoods < ActiveRecord::Migration
  def change
  	create_table :foods do |t|
  		t.string :food_name
  		t.integer :price
  	end
  end
end
