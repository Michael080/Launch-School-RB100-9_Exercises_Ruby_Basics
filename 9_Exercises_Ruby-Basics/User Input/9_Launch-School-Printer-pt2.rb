# In an earlier exercise, you wrote a program that prints
# 'Launch School is the best!' repeatedly until a certain
# number of lines have been printed.

# Modify this program so it repeats itself after each
# input/print iteration, asking for a new number each time
# through. The program should keep running until the user
# enters q or Q.

# original:
lines = nil

loop do
  # Get input (query number of lines?)
  puts ">> How many output lines do you want? Enter a number >= 3:"
  lines = gets.chomp
  lines.to_s == 'Q' ? break : (lines = lines.to_i)
  # Validate (3 line minimum input)
  if lines >= 3
    # Print LS praise
    lines.times { puts "Launch School is the best!" }
    next
  else
    # Error message:
    puts "Please enter a number >= 3"
  end
end


