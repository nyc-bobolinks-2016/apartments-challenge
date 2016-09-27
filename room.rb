class Room
  attr_accessor :name
  attr_reader :sqft
  def initialize(args={})
    @sqft = args.fetch(:sqft, 120)
    @window_count = args.fetch(:window_count, 0)
    @name = args.fetch(:name, "bedroom")
  end
end
