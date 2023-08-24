require './rider.rb'
require './card.rb'
require './cardtype.rb'
require './station.rb'

rider = Rider.new("Dennis",26,"Student Card")
station1 = Station.new("A", 20)
station2 = Station.new("B", 50)
station3 = Station.new("C", 35)
# puts rider.name
# puts rider.age
# puts rider.card.card_type.card_type
# puts rider.card.id_num
# puts rider.card.balance
 puts rider.card.top_up(500)
# puts rider.card.deduct_fare(20)
# puts rider.card.balance
# puts rider.card.status
# puts rider.card.expired!
# puts rider.card.status
# puts rider.card.renew_card
# puts rider.card.status
# puts station1.name
# puts station1.travel_fare
puts rider.travel(station1,station2)
puts rider.travel(station2,station1)
puts rider.travel(station1,station3)
puts rider.travel(station3,station1)