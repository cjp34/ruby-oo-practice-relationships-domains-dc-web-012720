require 'pry'
class Guest
attr_reader :guest_name
@@all = []

def initialize(guest_name)
	@guest_name = guest_name
	@@all << self
end

def listings
    Trip.all.select do |trip|
        if trip.guest == self
            trip.listing
        end
    end
end

def self.all
    @@all
end

def trips
    Trip.all.select do |trip|
        trip.guest == self
    end
end

def trip_count
    Trip.all.select do |trip|
        trip.guest == self
    end.count
end

 def self.pro_traveller
    Guest.all.select do |guest|
        guest.trip_count > 1
     end  
 end

def self.find_all_by_name(name)
		Guest.all.select do |guest|
			guest.guest_name == name
    
    end    
end


end