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

# What will the following code print to the screen?

# Follow-up question (5):
# 1) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?

puts "=================="
puts "Q3"
puts "------------------"

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

puts "scream('Yippeee')  =>  doesn't print anything due to return keyword before puts statement"