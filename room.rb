class Room
  attr_reader :sqft, :window_count
  attr_accessor :name
  
  def initialize(args = {})
    @name = args.fetch(:name, "bedroom")
    @sqft = args.fetch(:sqft, 120)
    @window_count = args.fetch(:window_count, window_num)
  end

  def window_num
    rand(0..2)
  end
end