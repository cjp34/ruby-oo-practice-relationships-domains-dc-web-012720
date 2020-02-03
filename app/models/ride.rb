class Ride
attr_reader :passenger, :driver, :distance
@@all = []
	def initialize(passenger, driver, distance)
		@passenger = passenger
		@driver = driver
		@distance = distance.to_f
		@@all << self
	end


	def self.all
		@@all
	end

	def passenger
		@passenger
	end

	def driver
		@driver
	end

	def distance
		@distance
	end

	def self.average_distance
		total = 0
		Ride.all.map do |ride|
			ride.distance
		end.each do |dist|
			total += dist
		end
		total/Ride.all.count
	end
end