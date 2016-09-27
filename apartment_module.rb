module Apartments

	def room_count
		self.rooms.length
	end

	def bedroom_count
		self.rooms.select{|room| room.name == 'bedroom'}.length
	end

	def total_sqft
		self.rooms.reduce(0){|sum, room| sum += room.sqft}
	end

	def price_per_sqft
		self.monthly_rent.to_f / self.total_sqft 
	end

end

