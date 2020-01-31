class Listing
attr_reader :listing
@@all = []
	def initialize(listing)
		@listing = listing
		@@all << self
	end

end
