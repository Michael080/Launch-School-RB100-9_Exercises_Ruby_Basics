# Use Hash#select to iterate over numbers and return a hash
# containing only key-value pairs where the value is less
# than 25. Assign the returned hash to a variable named
# low_numbers and print its value using #p.

numbers = {
    high:   100,
    medium: 50,
    low:    10
}

low_numbers = Array.new

numbers.map do |key, value|
  value < 25 ? low_numbers.push(value) : next
end

p low_numbers