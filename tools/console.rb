require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# driver1 = Driver.new("20")
# driver2 = Driver.new("30")
# driver3 = Driver.new("10")

# passenger1 = Passenger.new("Jason")
# passenger2 = Passenger.new("Jane")
# passenger3 = Passenger.new("Park")

# ride1 = Ride.new(passenger1, driver1, 90)
# ride2 = Ride.new(passenger2, driver2, 5)
# ride3 = Ride.new(passenger3, driver1, 10)
# ride4 = Ride.new(passenger1, driver2, 11)
# ride5 = Ride.new(passenger2, driver3, 12)

ingredient1 = Ingredient.new("dark chocolate", 30)
ingredient2 = Ingredient.new("white flour", 100)
ingredient3 = Ingredient.new("butter", 250)
ingredient4 = Ingredient.new("sugar", 500)

bakery1 = Bakery.new("Jason")
bakery2 = Bakery.new("Park")
bakery3 = Bakery.new("Flatiron")
bakery4 = Bakery.new("School")

dessert1 = Dessert.new(bakery2, "Chocolate bar", ingredient1)
dessert2 = Dessert.new(bakery1, "Muffin", ingredient2)
dessert3 = Dessert.new(bakery3, "Butter Cookie", ingredient3)
dessert4 = Dessert.new(bakery4, "Macaron", ingredient4)
dessert5 = Dessert.new(bakery2, "coffee", ingredient4)
dessert6 = Dessert.new(bakery2, "candy", ingredient1)
dessert7 = Dessert.new(bakery3, "icecream", ingredient2)
Pry.start
0



