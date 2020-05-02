# Modify the following loop so it iterates 5 times
# instead of just once.
iterations = 0

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  if iterations == 5
    break
  end
end

# Solution from Launch School:

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

# Further Exploration
# If the break statement is moved up one line so it runs before
# iterations is incremented, what would need to be changed?
puts "The conditional would need to change to 'iterations > 4'"