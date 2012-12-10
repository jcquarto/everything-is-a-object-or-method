# works with slightly more complex structures!

def whatami( obj )
	puts "#{obj.to_s} is a #{obj.class}"
end

whatami( Array.new )
whatami( [] )

whatami( Hash.new )
whatami( {} )