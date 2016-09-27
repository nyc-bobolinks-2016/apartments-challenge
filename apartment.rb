require_relative 'apartment_module'

class Apartment
	include ApartmentModule

	attr_accessor :number, :monthly_rent
	attr_reader :rooms

	def initialize(args = {})
		@number = args.fetch(:number, nil)
		@rooms = args.fetch(:rooms, [])
		@monthly_rent = args.fetch(:monthly_rent, 1000)
	end

end
