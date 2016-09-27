require_relative 'building'
require_relative 'apartment'
require_relative 'room'

room_one = Room.new(name: "bedroom", sqft: 200, window_count: rand(0..2))
room_two = Room.new(name: "kitchen", sqft: 300, window_count: rand(1..2))

# p room_one
# p room_two

apartment_one = Apartment.new(number: '1907', rooms: [room_one, room_two], monthly_rent: 1000)

room_three = Room.new(name: "living room", sqft: 500, window_count: rand(1..2))

apartment_two = Apartment.new(number: '1907', rooms: [room_one, room_two, room_three], monthly_rent: 1500)


# p apartment_one.total_sqft
# p apartment_one.price_per_sqft
# p apartment_one.room_count
# p apartment_one.bedroom_count

# p apartment_one
# p apartment_two

building = Building.new(address: '123 Main St', apartments: [apartment_one, apartment_two])

p building.total_room_count 

p building.total_monthly_revenue

p building.apartments_by_rent