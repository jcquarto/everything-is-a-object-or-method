# works with super-duper complextifities!
#
# (did you attend my last prezo on Blocks/Procs/Lambdas?)

def whatami( obj )
	puts "#{obj.to_s} is a #{obj.class}"
end


my_proc = Proc.new { puts "I am a Proc! Do Not Fear Me!" }
my_lambda = lambda { puts "I am a Lambda! Where's the Mint Jelly?" }


whatami( my_proc )
whatami( my_lambda )


# hmm, something to think about!! :)


puts "----------------------"
require "base64"
msg = "V1RGID8/Pz8/"
puts Base64.decode64(msg), "\n"
