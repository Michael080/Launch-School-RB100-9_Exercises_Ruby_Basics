#==============================================================
# BREAKFAST, LUNCH, OR DINNER (PART 1)

# What will the following code print? Why? Don't run it until
# you've attempted to answer.

def meal
  return 'Breakfast'
end

puts meal
puts "Returns: 'Breakfast'"


#==============================================================
# BREAKFAST, LUNCH, OR DINNER (PART 2)

#What will the following code print? Why? Don't run it until
# you've attempted to answer.

def meal
  'Evening'
end

puts meal
puts "Returns: 'Evening'"


#==============================================================
# BREAKFAST, LUNCH, OR DINNER (PART 3)
#
# What will the following code print? Why? Don't run it until
# you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal
puts "Returns: 'Breakfast'"


#==============================================================
# BREAKFAST, LUNCH, OR DINNER (PART 4)
#
# What will the following code print? Why? Don't run it until
# you've attempted to answer.

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal
puts "Prints: 'Dinner' & Returns: 'Breakfast'"


#==============================================================
# BREAKFAST, LUNCH, OR DINNER (PART 5)
# What will the following code print? Why? Don't run it until
# you've attempted to answer.

def meal
  'Dinner'
  puts 'Dinner'
end

p meal
puts "Prints 'Dinner' to screen and prints 'nil'"


#==============================================================
# BREAKFAST, LUNCH, OR DINNER (PART 6)
# What will the following code print? Why? Don't run it until
# you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal
puts "Returns 'Breakfast'"
