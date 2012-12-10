# That's because everything extends a primal Object class
def whatami( obj )
	puts "'#{obj.to_s}' is a #{obj.class}"
end


oh = Object.new  
# #<Object:0x0000010086c238> is a Object

whatami( oh )

# even nil!
whatami( nil )
