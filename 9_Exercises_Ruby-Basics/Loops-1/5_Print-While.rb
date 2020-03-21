# Using a while loop, print 5 random numbers between
# 0 and 99. The code below shows an example of how
# to begin solving this exercise.

counter = 0

while counter <= 5
  puts rand(99)
  counter += 1
end