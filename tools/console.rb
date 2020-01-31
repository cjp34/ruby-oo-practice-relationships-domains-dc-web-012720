require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

listing1 = Listing.new("Carl's Apartment", "DC")
listing2 = Listing.new("Jason's Apartment", "NY")
listing3 = Listing.new("Ann's Apartment", "VA")


jason = Guest.new("Jason")
carl = Guest.new("Carl")
ann = Guest.new("Ann")

trip1 = Trip.new(jason, listing1)
trip2 = Trip.new(jason, listing2)
trip3 = Trip.new(carl, listing3)
trip4 = Trip.new(ann, listing2)
trip5 = Trip.new(carl, listing2)
Pry.start
0



