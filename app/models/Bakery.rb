class Bakery
	attr_reader :name
	@@all = []
	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all 
		@@all
	end

	#  should return an array of ingredients for the bakery's desserts
	def ingredients
		Dessert.all.select do |dessert|
			dessert.bakery == self
		end.map do |bakery_obj|
			bakery_obj.ingredient.ingredient_name
		end.uniq
	end

	# should return an array of desserts the bakery makes
	def desserts
		Dessert.all.select do |dessert|
			dessert.bakery == self
		end.map do |bakery_obj|
			bakery_obj.dessert_name
		end
	end

	def bakery_dessert
		bakery_dessert = Dessert.all.select do |dessert_obj|
			dessert_obj.bakery == self
		end
	end
	# should return a number totaling the average number of calories for the desserts sold at this bakery
	def average_calories
		self.bakery_dessert.map do |obj|
			obj.ingredient.calorie
		end.sum/bakery_dessert.count
	end

	# should return a string of names for ingredients for the bakery
	def shopping_list
		self.bakery_dessert.map do |bakery_obj|
			bakery_obj.ingredient.ingredient_name
		end
	end

end