class Apartment
  attr_reader :rooms, :monthly_rent
  def initialize(args={})
    @number = args.fetch(:number, "")
    @monthly_rent = args.fetch(:monthly_rent, 1000)
    @rooms = args.fetch(:rooms, [])
  end

  def total_sqft
    rooms.inject(0) { |sum, room| sum + room.sqft }
  end

  def price_per_sqft
    monthly_rent/total_sqft.to_f
  end

  def room_count
    rooms.count
  end

  def bedroom_count
    rooms.count { |room| room.name == "bedroom" }
  end
end
