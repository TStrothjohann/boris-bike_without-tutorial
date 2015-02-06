module BikeContainer

	attr_accessor :capacity

	DEFAULT_CAPACITY = 20

	def bikes
		@bikes ||=[]
	end
	
	def capacity 
		@capacity ||= DEFAULT_CAPACITY
	end
		
	def dock(bike)
		raise 'the BikeContainer is full' if full? 
		bikes << bike	
	end

	def bike_count
		bikes.count
	end

	def release(bike)

		bikes.delete(bike)
	end

	def full?
		bike_count == capacity
	end

	def available_bikes
		@bikes.reject {|bike| bike.broken? }
	end 

	def broken_bikes
		@bikes.select {|bike| bike.broken? }	
	end

	def release_broken_bikes
		brokenbikes = []
		bikes.each do |bike|
			if bike.broken?
				brokenbikes << bike
				release(bike)
			end
		end
		return brokenbikes
	end

end


