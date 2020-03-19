##############################################################
puts "--------------------------------------------------------
1.)"
# Use the each method of Array to iterate over
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each do |num|
  puts num
end


##############################################################
puts "--------------------------------------------------------
2.)"
# Same as above, but only print out values greater than 5.

numbers.each do |num|
  num > 5 ? (puts num) : next
end


##############################################################
puts "--------------------------------------------------------
3.)"
# Now, using the same array from #2, use the select method to
# extract all odd numbers into a new array.

odds = numbers.select { |num| num.odd? }

puts "odds: #{odds}"


