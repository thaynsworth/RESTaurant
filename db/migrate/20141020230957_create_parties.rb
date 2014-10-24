class CreateParties < ActiveRecord::Migration
  def change
  	create_table :parties do |t|
  		t.string :name
  		t.integer :table_num
  		t.integer :party_size
  		t.string :paid
  	end
  end
end
