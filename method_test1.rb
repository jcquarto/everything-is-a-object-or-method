# everything is a method call!

# everytime we call ANY method on ANY object we're just invoking 'send'


# so, 

class Cat
  def speak
    "meow"
  end
end

c = Cat.new

puts c.speak
puts c.send(:speak)


# in fact, I could have done:
d = Cat.send(:new)

puts "----------------------"

puts d.speak
puts d.send(:speak)

# and since we don't have overloaded methods *by name* in Ruby:
e = Cat.send("new")  # which isn't very Ruby-ish

puts "----------------------"

puts e.speak
puts e.send(:speak)

# what about arguments?

class Cat
	def eat( food )
		"Purrr...Me haz #{food}."
	end
end

puts "----------------------"

cato = Cat.new
puts cato.speak
puts cato.eat( "tuna" )
puts cato.send( :eat, "tuna" )
