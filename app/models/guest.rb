require 'pry'
class Guest
attr_reader :guest
@@all = []

def initialize(guest)
	@guest = guest
	@@all << self
end

def listings
	Trip.all.select do |trip|
		binding.pry
		trip.guest == self
	end
end




end
