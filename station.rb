class Station
	attr_reader :name, :travel_fare
	def initialize(name,travel_fare)
		@name = name
		@travel_fare = travel_fare
	end
end