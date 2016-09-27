require_relative 'room'

class Apartment

  attr_reader :monthly_rent, :rooms

  def initialize(args)
    @number = args.fetch(:number)
    @rooms = args.fetch(:rooms)
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end

  def total_sqft
  end

  def price_per_sqft
  end

  def room_count
  end

  def bedroom_count
  end

end
