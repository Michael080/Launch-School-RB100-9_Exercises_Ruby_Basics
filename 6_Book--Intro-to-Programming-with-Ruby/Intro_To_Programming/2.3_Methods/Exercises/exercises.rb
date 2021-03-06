# Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.
puts "=================="
puts "Q1"
puts "------------------"

def greeting(name)
  puts "Hello, #{name}"
end

greeting("Zaphod")

#============================================================

# What do the following expressions evaluate to?
puts "=================="
puts "Q2"
puts "------------------"
# 1. x = 2
puts "1. x = 2   =>  2"

# 2. puts x = 2 
puts "2. puts x = 2  =>  nil"

# 3. p name = "Joe"
puts "3. p name = 'Joe'  =>  'Joe'"
# NOTE:  p() is a Kernel method which applies inspect to the standard output

# 4. four = "four"
puts "4. four = 'four'  =>  'four'"

# 5. print something = "nothing"
puts "5. print something = 'nothing'  =>  nil"


#============================================================

#Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

puts "=================="
puts "Q3"
puts "------------------"

def multiply(num1, num2)
  result = num1 * num2
end

#============================================================

# What will the following code print to the screen?

puts "=================="
puts "Q4"
puts "------------------"

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

puts "scream('Yippeee')  =>  doesn't print anything due to return keyword before puts statement"


#============================================================

# Follow-up question (5):
# 1) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?

puts "=================="
puts "Q5"
puts "------------------"

def screamer(words)
  words = words + "!!!!"
  puts words
end

screamer("Yippeee")

puts "screamer('Yippeee')  =>  nil"


#============================================================

#What does the following error message tell you?

# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

puts "Answer: The method has two parameters but was called with only one argument"