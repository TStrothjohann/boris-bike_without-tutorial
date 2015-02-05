require_relative 'bike_container'
class Van
	include BikeContainer 
	
	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end
	
	def get_broken_bikes_from(station)
		
		self.dock(station.broken_bikes)
		station.release_broken_bikes
	end

 
end