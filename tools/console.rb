require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

trip1 = Trip.new("Carl", "FlatIron")

binding.pry
0
