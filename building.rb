require_relative 'apartment_module'

class Building
	include Apartments
	attr_reader :apartments, :address
	
	def initialize(args = {})
		@apartments = args.fetch(:apartments, [])
		@address = args.fetch(:address, '')
	end

	

end
