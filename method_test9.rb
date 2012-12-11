# who the Receiver is leads to which method implmentation is called 

class Recipe
	include Comparable   # <--------- NEW
	
	attr :name, :calories, :cost_per_person
	def initialize(name, calories=0)
		@name = name
		@calories = calories
	end

	def <=>(anOther)    # <--------- NEW
		self.calories <=> anOther.calories
	end

end


class Cat
	include Comparable

	attr :name

	def initialize( name )
		@name = name
	end

	def <=>(anOther) 
		self.name <=> anOther.name
	end

end	

c = Cat.new("Pudding")  
r = Recipe.new("Pudding")

# Ex 1 - r is the Receiver
begin
	puts r == c
rescue Exception => e
	puts e.to_s
end

# Ex 2 - c is the Receiver
begin
	puts c == r
rescue Exception => e
	puts e.to_s
end