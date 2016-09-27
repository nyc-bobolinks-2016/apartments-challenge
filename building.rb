class Building

  attr_reader :apartments

  def initialize(args = {})
    @address = args.fetch(:address)
    @apartments = args.fetch(:apartments)
  end

  def total_room_count
    apartments.inject(0) { |sum, apartments| sum + apartments.room_count }
  end

  def total_monthly_revenue
    apartments.inject(0) { |sum, apartments| sum + apartments.monthly_rent }
  end

  def apartments_by_rent
    apartments.sort { |a, b| b.monthly_rent <=> a.monthly_rent }
  end

  def find_apartments_by_bedroom_count(num)
    apartments.find { |apartment| num == apartment.bedroom_count }
  end

  def total_sqft
    apartments.inject(0) { |sum, apartments| sum + apartments.total_sqft }
  end

end
