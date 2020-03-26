# ==============================================================
# Counting Sheep (Part 1)
#
# What will the following code print? Why? Don't run it until
# you've attempted to answer.

def count_sheep
  5.times do |sheep|
    # puts "Printing:"
    puts sheep
  end
end

puts count_sheep
puts "Prints numbers from 0 - 4 to screen & returns 5"

# LS Discussion:
# We're using Integer#times within the count_sheep method to
# count from 0 to 4 (#times starts at 0). Therefore, it's no
# surprise that the output includes 0 through 4. What may be
# surprising, however, is the fact that the output includes 5.
# Where did that 5 come from? If you study #times in the Ruby
# docs, you'll know that after iterating 5 times, the block
# returns the initial integer. Which, in this case, is 5.
#
# We can use this knowledge combined with what we learned from
# the previous exercises to determine why 5 was printed. When
# looking at count_sheep we can see that the #times block is
# the only code in the method. This means it's also the last l
# ine in the method. Since #times returns the initial integer,
# we now know that the return value of count_sheep is 5.


# # ==============================================================
# # Counting Sheep (Part 2)
#
# What will the following code print? Why? Don't run it until
# you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep
puts "Prints numbers from 0 - 4 to screen & returns 10"


# # ==============================================================
# # Counting Sheep (Part 3)
# What will the following code print? Why? Don't run it until
# you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep
puts "Prints 0 - 2 to screen and returns nil"

# LS Discussion:
# This exercise is a little different compared to the last two.
# We've made Integer#times the last line in count_sheep again,
# but this time there's a return inside the block. Based on
# what we know with return, we should be able to determine the
# return value of count_sheep. Looking at the if condition, we
# can see that return will be processed once sheep equals 2.
# This lets us know the method will end there and return the
# value provided by return.
#
# In this case, return didn't provide a value. That's why the
# last output is nil (we used #p when invoking count_sheep so
# that nil is visible in the output).

