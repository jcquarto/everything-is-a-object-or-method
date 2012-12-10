# DENOUEMENT:  Now here's a mix-in example. 
# idea: how to compare Recipes to one another? When is one Recipe "greater than" another, etc.
# although you understood mixins before, think thru this in the context of "Everything is a method call"

class Recipe
	include Comparable   # <--------- NEW
	
	attr :name, :calories, :cost_per_person
	def initialize(name, calories=nil, cost_per_person=nil )
		@name = name
		@calories = calories
	end

	def <=>(anOtherRecipe)    # <--------- NEW
		self.calories <=> anOtherRecipe.calories
	end

end

cake = Recipe.new( "Black Forest Cake", 1250 )
apple = Recipe.new( "Apple", 100 )
water = Recipe.new( "H20", 0 )

red_apple = Recipe.new( "Red Delicious Apple", 100)


puts "Is cake greater than apple?"
puts cake > apple

puts "----------------------"

puts "Is apple less than water?"
puts apple < water

puts "----------------------"

puts "Is apple between water and cake?"
puts apple.between?(water, cake)

puts "----------------------"
puts "are regular apple and red delicious apple the same (calories)?"
puts apple == red_apple



