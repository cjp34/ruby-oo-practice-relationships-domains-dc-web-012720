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
    
    end

    def self.most_popular

    end

end
