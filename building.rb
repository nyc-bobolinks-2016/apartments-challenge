class Building
  attr_accessor :address, :apartments
  def initialize(args = {})
    @address = args.fetch(:address, '')
    @apartments = args.fetch(:apartments, [])
  end 

  def total_monthly_revenue
    apartments.map! { |apartment| apartment.monthly_rent}
    apartments.reduce(:+)
  end

  def total_room_count
    apartments.map! { |apartment| apartment.room_count}
    apartments.reduce(:+)
  end

  def apartments_by_rent
    apartments.sort_by {|apartment| apartment.monthly_rent}.reverse
  end

  def find_apartments_by_bedroom_count(num)
    apartments.find{|apartment| apartment.bedroom_count == num }
  end

  def total_sqft
    apartments.map! { |apartment| apartment.total_sqft}
    apartments.reduce(:+)
  end
end
