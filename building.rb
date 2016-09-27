require_relative 'apartment'

class Building

attr_reader :apartments


	def initialize(args ={})
		@address = args.fetch(:address, "")
		@apartments = args.fetch(:apartments, [ ])
	end


	def total_room_count 
		apartments.inject(0) { |sum, apartment| sum + apartment.room_count} 
 	end

	def total_monthly_revenue 
		apartments.inject(0) { |sum, apartment| sum + apartment.monthly_rent} 
  end

  def apartments_by_rent
  	# apt_by_rent = [ ]
  	# apt_by_rent << @apartments {|apartment| apartment.monthly_rent}
  	apartments.sort { |a, b| b.monthly_rent <=> a.monthly_rent }
	# - sort apartments by rent.
  end

  def find_apartments_by_bedroom_count(count_arg)
		apartments.find {|apartment| apartment.bedroom_count == count_arg}
		
  end

  def total_sqft
		apartments.inject(0) { |sum, apartment| sum + apartment.total_sqft } 
	end


end
