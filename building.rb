require_relative 'building_module'

class Building
	include BuildingModule
	attr_reader :apartments, :address
	
	def initialize(args = {})
		@apartments = args.fetch(:apartments, [])
		@address = args.fetch(:address, '')
	end

end

#testing
