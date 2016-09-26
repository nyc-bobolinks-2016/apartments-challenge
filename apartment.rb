class Apartment
  attr_reader :number, :monthly_rent, :rooms

  def initialize(args={})
    @number = args.fetch(:number, 0)
    @monthly_rent = args.fetch(:monthly_rent, 1000)
    @rooms = args.fetch(:rooms, [])
  end

  def total_sqft
    rooms.inject(0) { |sum, room| sum + room.sqft }
  end

  def room_count
    rooms.count
  end

  def price_per_sqft
    monthly_rent/total_sqft.to_f
  end

  def bedroom_count
    rooms.select { |room| room.name == "bedroom" }.count
  end
end
