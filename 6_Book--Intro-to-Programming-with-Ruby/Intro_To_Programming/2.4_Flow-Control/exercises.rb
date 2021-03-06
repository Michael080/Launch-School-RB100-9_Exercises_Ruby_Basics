# Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.
puts "======================
1."

(32 * 4) >= 129
puts "false"

false != !true
puts "false"

true == 4
puts "false"

false == (847 == '874')
puts "true"

(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
puts "true"


# Write a method that takes a string as argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
puts "======================
2."

def cap_ten(string)
  if string.length > 10
    puts "This string is too long"
  else
    string.upcase
  end
end

puts cap_ten("blammo")
puts cap_ten("Incredibly very too long string")


# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "======================
3."

puts "Please enter a number:"       #Request number from user
user_number = gets.chomp.to_i            #Save input to 'user_number'

def find_range(user_number)
 if user_number <= 50
  range = "Your number is in this range: 1 - 50"
 elsif user_number <= 100
  range = "Your number is in this range: 51 - 100"
 else 
  range = "Your number is in this range: 101 - infinity"
 end
end

puts find_range(user_number)


# What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.
puts "======================
4."

# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")

#ANSWER
puts("--------------
  Snippet #1  Answer")
puts "FALSE"
puts "--------------"


# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end

#ANSWER
puts("--------------
  Snippet #2  Answer")
puts "Dig you get it right?"
puts "--------------"


# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

#ANSWER
puts("--------------
  Snippet #3  Answer")
puts "Alright now!"
puts "--------------"


# When you run the following code...
puts "======================
4."

# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
# end

# equal_to_four(5)

# You get the following error message..

# exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

# Why do you get this error and how can you fix it?
puts "The end keyword is missing from the if statement.
Add end statement after 'else'"

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)