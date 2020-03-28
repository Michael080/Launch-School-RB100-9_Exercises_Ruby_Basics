# You come across the following code. What errors does it
# raise for the given examples and what exactly do the
# error messages mean?

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among([1])

puts "	1: from /home/mroll/Documents/Class/Web Development/Launch School/RB100/9_Exercises_Ruby-Basics/Debugging/1_Reading-Error-Messages.rb:13:in `<main>'"
puts "/home/mroll/Documents/Class/Web Development/Launch School/RB100/9_Exercises_Ruby-Basics/Debugging/1_Reading-Error-Messages.rb:5:in `find_first_nonzero_among': wrong number of arguments (given 6, expected 1) (ArgumentError)"

puts "error 1: seems to be pointing at the last line executed before the error"
puts "error 2: Points at first line of the method definition @ 5 and provides detail 'wrong number of arguments'"
puts "Cause of error: The method is defined with one parameter but is being passed 6 arguments"