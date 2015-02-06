require_relative 'bike_container'
class Van
	include BikeContainer 
	
	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end
	
	def collect_broken_bikes(brokenbikedepot)
		
		brokenbikedepot.bikes.each do |bike|
			self.dock(bike) if bike.broken? 
		end
		brokenbikedepot.release_broken_bikes


	end

 
end