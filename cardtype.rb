class CardType
	attr_reader :card_type, :discount
	def initialize(card_type)
		@card_type = card_type
		if @card_type == "Senior Card"
			@discount = 0.5
		elsif @card_type == "Student Card"
			@discount = 0.2
		else
		end
	end
end