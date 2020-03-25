# Write two methods, one that returns the string "Hello" and one that
# returns the string "World". Then print both strings using #puts,
# combining them into one sentence.

def hello
  "Hello"
end

def world
  "World"
end

# puts "#{hello} #{world}"


# Greeting Through Methods (Part 2)
# Write a method named greet that invokes the following methods:

def greet
  hello + ' ' + world
end

puts greet