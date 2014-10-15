class Order < ActiveRecord::Base
	belongs_to(:food)
	belongs_to(:party)
	def to_s
		food_id? ? "Food is #{food_id}. Party is #{party_id}" : "I don't have a name"
	end
end