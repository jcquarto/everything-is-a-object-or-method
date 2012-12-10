# I respond to a whole mess of methods:

oh = Object.new


# do I respond to a particular method?

def cani( obj, meth )
	puts "can '#{obj.to_s}' respond to method '#{meth.to_s}'? #{obj.respond_to?(meth)} "
end

# oh.respond_to?(:clone)
# oh.respond_to(:send)    # (more on this in a minute!)

# but not
# oh.respond_to?(:speak)


puts "Can I ..."
puts cani(oh, 'clone')
puts cani(oh, 'send')
puts cani(oh, 'speak') 

# here's everything I know how to do:

puts "----------------------"

puts "What I know how to do: "
puts oh.methods
