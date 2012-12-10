# everything is an object!
def whatami( obj )
	puts "#{obj.to_s} is a #{obj.class}"
end

whatami( 1 )
whatami( 'a' )
whatami( :b )
whatami( 2**42 )
whatami( 2**64 )
whatami( 3.14159 )