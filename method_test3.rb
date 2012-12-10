# everything is a method call!
# more examples

# Ex 1
puts 7+8
puts 7.send(:+, 8)

puts "----------------------"

# Ex 2
arr = [1,2,3,4]
puts arr[3]
puts arr.send(:[], 3)

puts "----------------------"

# Ex 3
arr = [1,2,3,4]

puts arr.inspect
puts arr[0] = "Foo"

puts arr.inspect

puts arr.send( :[]=, 0, "Bar")
# so it's not really an assignment, it's a method call!

puts arr.inspect
