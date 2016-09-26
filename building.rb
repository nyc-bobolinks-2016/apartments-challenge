class Building

  attr_reader :address, :apartments

  def initialize(args={})
    @address = args.fetch(:address,"")
    @apartments = args.fetch(:apartments,[])
  end

  def total_room_count
    apartments.reduce(0){|total_r_count,apartment| total_r_count + apartment.room_count } 
  end

  def total_monthly_revenue
    apartments.reduce(0){|total_revenue,apartment| total_revenue + apartment.monthly_rent }     
  end

  def apartments_by_rent
    apartments.sort_by{|apartment| apartment.monthly_rent }.reverse
  end

  def find_apartments_by_bedroom_count(number_of_rooms)
    apartments.find{|apartment| apartment.bedroom_count == number_of_rooms}
  end

  def total_sqft
    apartments.reduce(0){|total_sqft, apartment| total_sqft + apartment.total_sqft }     
  end
  

end
