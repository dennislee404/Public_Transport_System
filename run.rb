require './rider.rb'
require './card.rb'
require './cardtype.rb'
require './station.rb'
require './datamanager.rb'

rider = Rider.new("Dennis",26,"Student Card")
station1 = Station.new("A", 20)
station2 = Station.new("B", 50)
station3 = Station.new("C", 35)

## test Class Rider
# puts rider.name
# puts rider.age

## test Class Card, CardType
# puts rider.card.card_type.card_type
# puts rider.card.id_num
# puts rider.card.balance
# puts rider.card.top_up(500)
# puts rider.card.deduct_fare(20)
# puts rider.card.balance
# puts rider.card.status
# puts rider.card.expired!
# puts rider.card.status
# puts rider.card.renew_card
# puts rider.card.status

## test Class Station
# puts station1.name
# puts station1.travel_fare
# puts rider.travel(station1,station2)
# puts rider.travel(station2,station1)
# puts rider.travel(station1,station3)
# puts rider.travel(station3,station1)

## test Class DataManager
my_file = 'riders.txt'
puts "my_file is #{my_file}"
puts "my_file.class is #{my_file.class}"
rider_database = DataManager.load_rider_database(my_file)
# puts rider_database.class
# puts rider_database[0].name
# puts rider_database[1].name
# puts rider_database[2].name
# puts rider_database[0].age 
# puts rider_database[0].card.card_type.card_type
# puts rider_database[0].card.balance
# puts rider_database[0].card.expired
# puts rider_database[0].card.status
puts rider_database[0].card.balance
rider_database,rider = DataManager.update_rider_balance(rider_database, "Dennis", 50)
# puts rider.name
# puts rider.card.balance
DataManager.save_rider_database(my_file,rider_database,rider)

