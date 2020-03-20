##############################################################
puts "--------------------------------------------------------
1.)"
# Use the each method of Array to iterate over
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each do |num|
  puts num
end


##############################################################
puts "--------------------------------------------------------
2.)"
# Same as above, but only print out values greater than 5.

numbers.each do |num|
  num > 5 ? (puts num) : next
end


##############################################################
puts "--------------------------------------------------------
3.)"
# Now, using the same array from #2, use the select method to
# extract all odd numbers into a new array.

odds = numbers.select { |num| num.odd? }

puts "odds: #{odds}"


##############################################################
puts "--------------------------------------------------------
4.)"
# Append 11 to the end of the original array. Prepend 0 to the beginning.

numbers.push(11)
numbers.unshift(0)
puts "numbers: #{numbers}"


##############################################################
puts "--------------------------------------------------------
5.)"
# Get rid of 11. And append a 3.

numbers.pop
numbers.push(3)
puts "numbers: #{numbers}"


##############################################################
puts "--------------------------------------------------------
6.)"
# Get rid of duplicates without specifically removing any one value.

numbers.uniq!
puts "numbers: #{numbers}"


##############################################################
puts "--------------------------------------------------------
7.)"
# What's the major difference between an Array and a Hash?

puts "Arrays are indexed/ordered values and hashes use key-value pairs"


##############################################################
puts "--------------------------------------------------------
8.)"
# Create a Hash, with one key-value pair, using both Ruby syntax styles.

hashy = {wammo: "blammo"}
hasherish = {:shamwow => "kapow!"}

puts "hashy: #{hashy} / hasherish: #{hasherish}"


##############################################################
puts "--------------------------------------------------------
9.)"
# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
puts ":b => #{h[:b]}"
# 2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
puts ":e => #{h[:e]}"
# 3. Remove all key:value pairs whose value is less than 3.5
h.delete_if { |key, value| value < 3.5}
puts "h: #{h}"


##############################################################
puts "--------------------------------------------------------
10.)"
#Can hash values be arrays? Can you have an array of hashes?
# (give examples)

# hash values as arrays:
hashray = {arr: ["check", "this", "array"]}
puts "hashray: #{hashray}"

# Array of hashes:
arrash = [{a: 1, b: 2, c: 3 }]
puts "arrash: #{arrash}"


##############################################################
puts "--------------------------------------------------------
11.)"
#Given the following data structures. Write a program that
# copies the information from the array into the empty hash
# that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts "contacts: #{contacts}"


##############################################################
puts "--------------------------------------------------------
12.)"
# Using the hash you created from the previous exercise,
# demonstrate how you would access Joe's email and Sally's
# phone number?

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]