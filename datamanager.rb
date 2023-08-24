class DataManager
	def self.load_rider_database(filename)
		rider_database = []

		File.foreach(filename) do |line|
			#puts "line.class is #{line.class}"
			name, age, type, balance, expiry = line.chomp.split(',')
			
			rider = Rider.new(name, age, type)
			rider.card.top_up(balance.to_i)
			rider.card.expired! if expiry == 'true'
			
			rider_database << rider
		end

		rider_database 
	end

	def self.update_rider_balance(rider_database, rider_name, rider_balance)
		rider = rider_database.find{|rider| rider.name == rider_name}
		
		if rider 
			rider.card.top_up(rider_balance)
			puts "Balance #{rider.card.balance}"
		else
			puts "#{rider_name} not found"
		end
		return rider_database, rider 
	end

	def self.save_rider_database(filename, rider_database, rider)
		File.open(filename, "r+") do |file|
			rider_database.each do |rider|
				file.puts "#{rider.name},#{rider.age},#{rider.card.card_type.card_type},#{rider.card.balance},#{rider.card.expired}"
			end
		end
	end
end