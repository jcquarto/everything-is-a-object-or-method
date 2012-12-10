# what about arguments?


class Cat

  def speak
    "meow"
  end

	def eat( food )
		"Purrr...Me haz #{food}."
	end
end


cato = Cat.new
puts cato.speak
puts cato.eat( "tuna" )

puts "----------------------"

puts cato.send( :speak )
puts cato.send( :eat, "tuna" )
