#

class Recipe
	#include Comparable
	attr :name, :calories, :cost_per_person
	def initialize(name, calories=nil, cost_per_person=nil )
		@name = name
		@calories = calories
	end


end

cake = Recipe.new( "Black Forest Cake", 1250 )
apple = Recipe.new( "Delicious Apple", 100 )
water = Recipe.new( "H20", 0 )

red_apple = Recipe.new( "Red Delicious Apple", 100)


# questions I'd like to ask:
# "Is cake greater than apple?"
# "Is apple less than water?"
# "Is apple between water and cake?"
# "are regular apple and red delicious apple the same (calories)?"

begin
	puts cake > apple
rescue Exception => e
	puts e.to_s
end




