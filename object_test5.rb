# ok, so Procs and Lambdas are both Procs...kinda
#
# (I warned you last time Blocks/Procs/Lambdas were subtle!)


my_proc = Proc.new { puts "I am a Proc! Do Not Fear Me!" }
my_lambda = lambda { puts "I am a Lambda! Where's the Mint Jelly?" }


# am I a lambda?
puts " is a lambda a lambda?: #{my_lambda.lambda?}"
puts " is a proc a lambda? #{my_proc.lambda?}"

# hmm, something to think about!! :)

puts "----------------------"
require "base64"
msg = "Tk9XIE1ZIEhFQUQgSFVSVFMhIFBMRUFTRSBNT1ZFIE9OIQ=="
puts Base64.decode64(msg), "\n"

