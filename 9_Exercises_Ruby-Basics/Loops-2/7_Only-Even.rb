# Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  number.even? ? (puts number) : next
end


# LS solution:
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# Further Exploration
# Why did next have to be placed after the incrementation of number and
# before #puts?
puts "Answer: In order to skip to the next iteration of the loop if 'number is odd'.
This allows for printing of 'number' only when 'number' is not odd, or even."