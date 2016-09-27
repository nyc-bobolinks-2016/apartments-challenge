class Apartment

  attr_reader :number, :rooms, :monthly_rent, :sqft

  def initialize (args = {})
    @number = args.fetch(:number, rand(1..10))
    @rooms = args.fetch(:rooms, []) 
    @monthly_rent = args.fetch(:monthly_rent, 1000)

  end

  def bedroom_count
    bedrooms = @rooms.find_all {|room| room.name == 'bedroom'}
    bedrooms.count
  end

  def room_count
    @rooms.count
  end

  def total_sqft
     @rooms.inject(0) { |sum, room| sum + room.sqft } 
  end

  def price_per_sqft
    monthly_rent.to_f / total_sqft.to_f 
  end

end

