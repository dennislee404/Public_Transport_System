class Card
	attr_reader :balance, :expired, :id_num, :card_type, :status
	def initialize(balance=0, card_type)
		@id_num = rand(1..9999)
		@balance = balance
		@expired = false
		if @expired == false
			@status = "Active"
		else
			@status = "Expired"
		end
		@card_type = CardType.new(card_type)
	end

	def top_up(amount)
		@balance += amount
		#puts "RM#{sprintf('%.2f',amount)} has been added to your card."
		#puts "Your current balance is RM#{sprintf('%.2f',@balance)}."
	end

	def deduct_fare(amount)
		@balance -= amount
		#puts "RM#{sprintf('%.2f',amount)} deducted from your card"
		#puts "Your current balance is RM#{sprintf('%.2f',@balance)}."
	end

	def expired!
		@expired = true
		@status = "Expired"
	end

	def renew_card
		@expired = false
		puts "Your card has been renewed."
	end
end
