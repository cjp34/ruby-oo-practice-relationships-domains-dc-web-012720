class Driver
attr_reader :distance
@@all = []
def initialize(distance)
@distance = distance
@@all << self
end

def name
	rides = Ride.all.select do |ride|
		ride.driver == self
	end
	rides.map do |obj|
		obj.passenger.name
	end
end

def rides	
	Ride.all.select do |ride|
		ride.driver == self
	end
end

def passengers
	self.rides.map do |ride|
		ride.passenger
	end
end


def self.all
	@@all
end

def self.mileage_cap(distance)
	def dist_arr  
		total = 0 
		self.rides.map do |rides|
				rides.distance
			end.each do |dist|
				total += dist
			end
			total
	end
		Driver.all.select do |driver|
		driver.dist_arr > distance
	end
end

end