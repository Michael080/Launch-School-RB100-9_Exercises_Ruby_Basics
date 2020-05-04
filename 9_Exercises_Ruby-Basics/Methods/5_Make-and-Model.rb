# Using the following code, write a method called car that takes
# two arguments and prints a string containing the values of
# both arguments.
puts "----------
myAnswer:"
def car(make, model)
  puts make + ', ' + model
end

car('Toyota', 'Corolla')

# Further Exploration
# Remove the #puts call from the car method. Modify your program
# so it still prints the result.
#
# How do the return values of car differ with and without the
# #puts?
puts "----------
further exploration:"

def car(make, model)
  return make + ' ,' + model
end

puts car('Jeep', 'Tesla')
puts car('Jeep', 'Tesla').class

puts "Answer: The return value of the puts statement is nil
whereas the return value is a string"