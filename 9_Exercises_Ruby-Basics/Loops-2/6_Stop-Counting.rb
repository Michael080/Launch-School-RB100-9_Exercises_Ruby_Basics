# The method below counts from 0 to 4. Modify the block so that it
# prints the current number and stops iterating when the current
# number equals 2.

# 5.times do |index|
#   puts index
#   index == 2 ? break : next
# end
#
#
# # LS solution:
# 5.times do |index|
#   puts index
#   break if index == 2
# end


# Further Exploration
# Without running this code, how many values will be printed?
5.times do |index|
  puts index
  break if index == 4
end
puts "-------------"
puts "Answer: 5"
puts "-------------"

# Now, consider this code:
5.times do |index|
  puts index
  break if index < 7
end
puts "-------------"
puts "Answer: 1"
puts "-------------"