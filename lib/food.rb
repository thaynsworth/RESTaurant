class Food < ActiveRecord::Base
	has_many(:orders)
	has_many(:parties, :through => :orders)

	validates :food_name, :price, presence: true
	validates :food_name, :price, uniqueness: true
	def to_s
		food_name? ? "Item #{food_name}" : "I don't have a name."
	end
end