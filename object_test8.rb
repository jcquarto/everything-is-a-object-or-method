# A Class is an object (showed that earlier), so it espond to a whole mess of methods:

class Cat
  def speak
    "meow"
  end
end

c = Cat.new

#now I can speak
puts c.respond_to?(:speak)
puts c.speak

# in fact, what is my ancestor tree?
puts "----------------------"
puts Cat.ancestors


# which is why I can do this:
puts "----------------------"
puts c.respond_to?(:send)
puts c.respond_to?(:to_s)



