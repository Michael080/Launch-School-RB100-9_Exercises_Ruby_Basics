#==============================================================
# Stoplight (Part 1)
#
# In the code below, stoplight is randomly assigned as 'green',
# 'yellow', or 'red'.

stoplight = ['green', 'yellow', 'red'].sample

# Write a case statement that prints "Go!" if stoplight equals
# 'green', "Slow down!" if stoplight equals 'yellow', and
# "Stop!" if stoplight equals 'red'.

case
when stoplight == 'green'
  puts 'Go!'
when stoplight == 'yellow'
  puts 'Slow down!'
when stoplight == 'red'
  puts "Stop!"
end


# LS solution
case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end


#==============================================================
# Stoplight (Part 2)
#
# Convert the following case statement to an if statement.

stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end