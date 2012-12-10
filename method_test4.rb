# everything is a method call!
# more examples

# Ex 4
# even comparisons:

x = 10
if ( x == 10 )
	x = 99
	puts x
end

x = 10
if ( x.send( :==, 10 )) 
	x = 99 
	puts x
end

puts "----------------------"

# or alternately 
# if (10 == x)
x = 10
if ( 10.send( :==, x ))
	x = 77
	puts x
end


#
# this implies from 10 == x that Integer class (10) may have a completely 
# different implementation of the "==" method !
# The Receiver (left side of equation) determines how it will implement the method
#
# in languages where there is "implicit conversion" when comparing, 
# there will be rules (which you have to know) to decide when 10.0 (Float) equals 10 (Integer)
# but in Ruby, only the Receiver makes this decision

puts "----------------------"
require "base64"
msg = "VEhJUyBGUklFUyBNWSBCUkFJTiE="
puts Base64.decode64(msg), "\n"

