#What does the each method in the following program
# return after it is finished executing?
puts "=============
1.)"

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

puts "The each method returns the value of
each element of the array + 1"
puts "=> 2, 3, 4, 5, 6"


# Write a while loop that takes input from the user,
# performs an action, and only stops when the user
# types "STOP". Each loop can get info from the user.
puts "=============
2.)"

def there_yet()
  response = ""
  while response != "STOP"
    puts "Are we there yet?"
    response = gets.chomp
  end
end

there_yet()

# Write a method that counts down to zero using
# recursion.
puts "=============
3.)"

def countdown(num)
  puts num
  if num > 0
    countdown(num - 1)
  end
end

countdown(10)