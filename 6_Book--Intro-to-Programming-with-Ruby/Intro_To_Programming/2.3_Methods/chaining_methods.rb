#                   Chaining Methods
puts "====================="

def add_four(n) 
  n + 4
end

add_four(4).times { puts 'this should print 8 times'}
#this works fine


# basically the same code but with a puts expression

# puts "====================="

# def add_five(n) 
#   puts n + 5
# end

# add_five(8).times { puts 'will this work?'}

#this method call produces error:
#'undefined method 'times' for nil:NilClass
#this is because 'puts n + 5' is a nil value


# similar to add_five but w/ a new expression as the last line of the method

def add_six(n)
  new_value = n + 6
  puts new_value
  new_value
end

add_six(8).times { puts 'this will work'}
# this works because the method is no longer returning the puts expression which has a nil value.