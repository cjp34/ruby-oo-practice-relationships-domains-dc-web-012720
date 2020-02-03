class Dessert
	attr_reader :bakery, :dessert_name, :ingredient
	@@all = []
	def initialize(bakery, dessert_name, ingredient)
		@bakery = bakery
		@dessert_name = dessert_name
		@ingredient = ingredient
		@@all << self
	end

	def self.all
		@@all
	end

	# should return an array of ingredients for the dessert
	def dessert
		Dessert.all.select do |dessert_obj|
			dessert_obj == self
		end.map do |obj|
			obj.ingredient.ingredient_name
		end
	end

	# should return the bakery object for the dessert
	def bakery
		@bakery
	end

	# should return a number totaling all the calories for all the ingredients included 
	def calories
		Dessert.all.select do |dessert_obj|
			dessert_obj == self
		end.map do |obj|
			obj.ingredient.calorie
		end.sum
	end

end