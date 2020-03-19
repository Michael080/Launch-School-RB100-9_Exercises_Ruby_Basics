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

