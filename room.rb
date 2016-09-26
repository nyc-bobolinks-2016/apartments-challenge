class Room

  attr_reader :sqft#, :window
  attr_accessor :name
  def initialize(args={})
    @name = args.fetch(:name, "bedroom")
    @sqft = args.fetch(:sqft, 120)
    @window = args.fetch(:window, 0)
  end
end
