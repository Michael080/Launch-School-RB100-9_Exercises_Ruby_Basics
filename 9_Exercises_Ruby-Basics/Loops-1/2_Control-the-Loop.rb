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