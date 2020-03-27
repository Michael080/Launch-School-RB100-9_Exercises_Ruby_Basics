# Using the following code, capitalize the value of state then print
# the modified value. Note that state should have the modified value
# both before and after you print it.

state = 'tExAs'

state = state.downcase

state[0] = state[0].upcase

puts state


# LS solution:
state = 'tExAs'

state.capitalize!
puts state