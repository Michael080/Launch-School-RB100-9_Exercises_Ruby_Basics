# Write a program that checks if the sequence of characters
# "lab" exists in the following strings. If it does exist,
# print out the word.
#
# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"
puts "--------------------------------------------------
1.)"

words = ["labaratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

# Loop over array and call method on items
def word_loop(words)
  words.each do |word|
    lab_check(word) ? (puts word) : next
  end
end

# Check item for "lab"
def lab_check(word)
  /lab/.match(word.downcase)
end

word_loop(words)


#####################################################################
puts "--------------------------------------------------
2.)"
# What will the following program print to the screen? What
# will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

puts "Nothing is printed to screen. A 'Proc' object is returned."


#####################################################################
puts "--------------------------------------------------
3.)"
# What is exception handling and what problem does it solve?

puts "Exception handling allows for the continued execution of
spec'd code when an error is thrown"


#####################################################################
puts "--------------------------------------------------
4.)"
# Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


#####################################################################
puts "--------------------------------------------------
5.)"
# Why does the following code...

# def execute(block)
#   block.call
# end
#
# execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

puts "The parameter in execute(block) doesn't allow for the
execution of a block, '&block' should be used instead."