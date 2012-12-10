# what about method calls without a receiver?
def santa_says( msg )
	"HoHoHo! Santa says #{msg}"
end

puts santa_says("No presents for you!")

puts "----------------------"

puts self.send(:santa_says, "No presents for you!")

# why does this work? Because everything is an object! So "self" always 
# refers to *something* and Ruby just sends the message to it

