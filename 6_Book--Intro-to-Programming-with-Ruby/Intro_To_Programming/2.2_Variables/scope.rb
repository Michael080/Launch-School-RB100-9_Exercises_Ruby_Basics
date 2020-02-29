# from: https://launchschool.com/books/ruby/read/variables
#scope.rb

a = 5           # variable is initialized in the outer scope

3.times do |n|  # method invocation with a block
  puts "a w/in block: #{a}"
  a = 3         # is a accessible here, in an inner scope?
  # b = 5         # b is initialized in the inner scope
end

puts "===================================="
puts "a after reassignment in block: #{a}"
puts "===================================="
puts "b from outer scope after assignment in block: #{b}"
# Produces 'undefined local variable'
  