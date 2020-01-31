

class Trip
    attr_reader :guest_name, :listing_name
    @@all = []

    def initialize(guest, listing)
        @guest = guest
        @listing = listing
        @@all << self

    end

    def listing
        @listing
    end

    def guest
        @guest
    end

    def self.all
        @@all
    end


end

