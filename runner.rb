require_relative 'apartment'
require_relative 'room'
require_relative 'building'

lounge = Room.new(name: 'kitchen', sqft: 120, window_count: rand(0..2))
bedroom = Room.new(name: 'lounge', sqft: 380, window_count: rand(0..2))

generate_rooms = [bedroom, lounge]

linden_palace =  Apartment.new(number: '10#7', rooms: generate_rooms, monthly_rent: 1450)


# x =  linden_palace.rooms.map do |room| 
#   room.sqft.reduc 
# end

building = Building.new(apartments: linden_palace)

p building.apartments_by_rent


