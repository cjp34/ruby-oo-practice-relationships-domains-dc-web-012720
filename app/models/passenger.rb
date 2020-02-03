class Passenger
attr_reader :name
@@all = []
	def initialize(name)
		@name = name
		@@all << self
	end

	def name
		@name
	end

	def rides
		Ride.all.select do |ride|
			ride.passenger == self
		end
	end

	def drivers
		Ride.all.select {|ride| ride.passenger == self}.map do |driver|
			driver.driver
		end
	end

	def self.all
		@@all
	end

	def total_distance
		total = 0
		dist_arr = self.rides.map do |ride|
			ride.distance
		end
		dist_arr.each do |dist|
			total += dist
		end
		total
	end

	def self.premium_members
		@@all.select do |passenger|
			passenger.total_distance > 100
		end
	end

end