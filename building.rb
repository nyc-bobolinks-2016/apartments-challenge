class Building

  attr_reader :apartments
  def initialize(args={})
    @address = args.fetch(:address, "")
    @apartments = args.fetch(:apartments, [])
  end

  def total_room_count
    apartments.inject(0) { |sum,apartment| sum + apartment.room_count }
  end

  def total_monthly_revenue
    apartments.inject(0) { |sum, apartment| sum + apartment.monthly_rent }
  end

  def apartments_by_rent
    apartments.sort { |apartment_1, apartment_2| apartment_2.monthly_rent <=> apartment_1.monthly_rent }
  end

  def find_apartments_by_bedroom_count(num)
    apartments.find { |apartment| apartment.bedroom_count == num }
  end

  def total_sqft
    apartments.inject(0) { |sum, apartment| sum + apartment.total_sqft }
  end
end
