class Building
	attr_reader :apartments
	def initialize( args = {} )
		@address = args.fetch(:address)
		@apartments = args.fetch(:apartments)
	end

	def total_room_count
		apartments.reduce(0) { |total, apartment| total + apartment.room_count}
	end

	def total_monthly_revenue
		apartments.reduce(0) { |total, apartment| total + apartment.monthly_rent }
	end

	def apartments_by_rent
		apartments.sort { |apt_1, apt_2| apt_2.monthly_rent <=> apt_1.monthly_rent}
	end

	def find_apartments_by_bedroom_count(num)
		apartments.find { |apartment| apartment.bedroom_count == num}
	end

	def total_sqft
		apartments.reduce(0) { |total, apartment| total + apartment.total_sqft}
	end
end
