class Rider
	attr_reader :name, :age, :card
	def initialize(name, age, card_type)
		@name = name
		@age = age
		@card = Card.new(card_type)
	end

	def travel(origin,destination)
		@origin = origin
		@destination = destination
		@standard_fare = (@destination.travel_fare - @origin.travel_fare).abs
		@discounted_fare = @standard_fare * (1-@card.card_type.discount)

		if card.balance >= @discounted_fare
			puts "You traveled from #{origin.name} to #{destination.name}."
			card.deduct_fare(@discounted_fare)
		else
			puts "Insufficient amount in card. Please top up to continue riding."
		end
	end
end

