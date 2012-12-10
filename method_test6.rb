# what does all this imply?

# First
# A.B means call method B on object A
# A is the receiver to which you send the method call
# you must assume that A will respond to the method (or the system will barf if it can't)
# (see footnote)


# Second
# B is NOT an instance variable of A
# that's just a convenient fib for us to think of it
# (We can think of it this way *because* Ruby's implemented it to work this way)

# Third
# A is not a data structure that has B as a member
# again, just a convenient fib for us to think of it

# If you get this in your head now -- what it is , what it isn't , 
# and what convenient fibs we allow ourselves,....
#....you will be SOOOO HAPPY for the rest of your Ruby life.

# Fourth
# 7+8 
# "x" + "y"
# [1,2,3] + [4,5,6]
#
# are all *different* methods named "+", no "casting" going on!
# these are *instance methods*, not language operators! (not part of language! weird!)
# classes involved: Numeric#+, String#+, Array#+ ... 


puts "(nothing to do)"

# footnote: (actually if A can't respond, it will look for Modules mixed in to A, 
# if not a method there, then look at A's super, 
# if not there then Modules mixed in to the super, 
# if not then the super's super, etc.)
