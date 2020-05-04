# Using the following code, combine the two names together
# to form a full name and assign that value to a variable
# named full_name. Then, print the value of full_name.
puts "---------------
myAnswer:"
first_name = 'John'
last_name = 'Doe'
full_name = first_name + ' ' + last_name
full_name_part_II = "#{first_name} #{last_name}"

puts full_name
puts full_name_part_II

# Further Exploration
# Can you think of at least two additional ways to combine
# a first and last name into a full name?
puts "---------------
further exploration:"
first_name = 'John'
last_name = 'Doe'
full_name = Array.new
full_name.push(first_name)
full_name.push(last_name)

puts "#{full_name[0]} #{full_name[1]}"

puts "---------------"

first_name = 'John'
last_name = 'Doe'
full_name = Hash.new
full_name[:first] = first_name
full_name[:last] = last_name

puts "#{full_name[:first]} #{full_name[:last]}"


