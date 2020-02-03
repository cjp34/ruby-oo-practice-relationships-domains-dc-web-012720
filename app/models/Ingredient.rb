class Ingredient
	attr_reader :ingredient_name, :calorie
	@@all = []
	def initialize(ingredient_name, calorie)
		@ingredient_name = ingredient_name
		@calorie = calorie
		@@all << self
	end

	def self.all
		@@all
	end

	# should return a dessert object for that ingredient
	def dessert
		Dessert.all.select do |dessert_obj|
			dessert_obj.ingredient == self
		end
	end

	#should return the bakery object for the bakery that uses that ingredient
	def bakery
		Dessert.all.select do |dessert_obj|
			dessert_obj.ingredient == self
		end.map do |obj|
			obj.bakery
		end
	end

# 	should take a string argument return an array of all ingredients that
# include that string in their name
# 	- .find_all_by_name('chocolate') might return ['chocolate sprinkles',
# 		'chocolate mousse', 'chocolate']
# 	- make sure you aren't just looking for exact matches (like 'chocolate' ==
# 		'chocolate')

	def self.find_all_by_name(ingredient)
		@@all.select do |ingredient_obj|
			ingredient_obj.ingredient_name.include?(ingredient)
		end.map do |obj|
			obj.ingredient_name
		end
	end
end