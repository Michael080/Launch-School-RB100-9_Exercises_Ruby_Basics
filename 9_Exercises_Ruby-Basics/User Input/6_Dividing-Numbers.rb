# Write a program that obtains two Integers from the user,
# then prints the results of dividing the first by the second.
# The second number must not be 0, and both numbers should be
# validated using this method:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def no_zeros(numerator)
  numerator.to_i == 0
end

# This method returns true if the input string can be converted
# to an Integer and back to a string without loss of information,
# false otherwise. It's not a perfect solution in that some
# inputs that are otherwise valid (such as 003) will fail, but it
# is sufficient for this exercise.
num_1 = nil
num_2 = nil

loop do
  puts ">> Enter 2 numbers for division --"
  puts ">> First number: *numerator"
  num_1 = gets.chomp

  next if no_zeros(num_1)

  break if valid_number?(num_1)
  puts "ERROR! Please enter a valid number"
end

num_1 = num_1.to_i

loop do
  puts ">> Second number: *divisor"
  num_2 = gets.chomp

  break if valid_number?(num_2)
  puts "ERROR! Please enter a valid number"
end

num_2 = num_2.to_i
result = num_1 / num_2

puts "----------"
puts "RESULT = #{result}"
puts "----------"





