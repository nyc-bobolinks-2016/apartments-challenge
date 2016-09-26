class Apartment
  attr_reader :number, :rooms, :monthly_rent

  def initialize(args={})
    @number = args.fetch(:number,"")
    @rooms = args.fetch(:rooms,[])
    @monthly_rent = args.fetch(:monthly_rent,1000)
  end

  def total_sqft
    rooms.reduce(0){| total_sqft, room | total_sqft + room.sqft }
  end

  def price_per_sqft
      self.monthly_rent / total_sqft.to_f     
  end

  def room_count
    self.rooms.length
  end

  def bedroom_count
    self.rooms.count{|room| room.name == "bedroom" }
  end



end
