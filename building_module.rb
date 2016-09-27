module BuildingModule

	def total_room_count
		self.apartments.reduce(0){|sum, apartment| sum + apartment.room_count }
	end	

	def total_monthly_revenue
		self.apartments.reduce(0){|sum, apartment| sum + apartment.monthly_rent}
	end	

	def apartments_by_rent
		self.apartments.sort_by {|apartment| -apartment.monthly_rent}
	end

	def find_apartments_by_bedroom_count(input)
		self.apartments.find {|apartment| apartment.bedroom_count == input}
	end

	def total_sqft
		self.apartments.reduce(0) {|sum, apartment| sum + apartment.total_sqft}
	end	

end