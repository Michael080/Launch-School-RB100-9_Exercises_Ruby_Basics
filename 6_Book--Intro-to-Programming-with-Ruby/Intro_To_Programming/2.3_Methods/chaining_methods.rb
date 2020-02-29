#                   Chaining Methods
puts "====================="

def add_four(n) 
  n + 4
end

add_four(4).times { puts 'this should print 8 times'}
#this works fine


# basically the same code but with a puts expression
puts "====================="

def add_five(n) 
  puts n + 5
end

add_four(8).times { puts 'this should print 8 times'}