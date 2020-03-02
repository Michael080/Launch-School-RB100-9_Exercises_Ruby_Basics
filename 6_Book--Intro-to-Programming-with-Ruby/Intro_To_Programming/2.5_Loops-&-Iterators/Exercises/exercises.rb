#What does the each method in the following program
# return after it is finished executing?
puts "=============
1.)"

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

puts "The each method returns the value of
each element of the array + 1"
puts "=> 2, 3, 4, 5, 6"