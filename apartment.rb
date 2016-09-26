class Apartment
  attr_accessor :number,  :rooms, :monthly_rent  
  def initialize(args = {})
    @number = args.fetch(:number, 0)
    @rooms = args.fetch(:rooms, 0)
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end

  def total_sqft
    rooms.map! do |room| 
      room.sqft 
    end 
    rooms.reduce(:+)
  end

  def price_per_sqft
    monthly_rent/total_sqft.to_f
  end

  def room_count
    rooms.length
  end

  def bedroom_count 
    rooms.count do |room|
      room.name == 'bedroom'
    end
  end

end
