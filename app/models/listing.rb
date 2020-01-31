class Listing
attr_reader :listing_name, :listing_location
@@all = []
	def initialize(listing_name, listing_location)
        @listing_name = listing_name
        @listing_location = listing_location
		@@all << self
    end
    
    def guest
        @guest
    end

    def trips
        @trips
    end

    def self.all
        @@all
    end

    def self.find_all_city(city)
			Listing.all.select do |list|
				list.listing_location == city
			end
    end

		def self.most_popular
			arr = []
			# returns single list with most trip
			Trip.all.each do |trip|
				arr << trip.listing
			end
				arr.max_by do |x|
					arr.count(x)
			end
    end

end
