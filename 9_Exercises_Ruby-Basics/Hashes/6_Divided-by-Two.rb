# Use Enumerable#map to iterate over numbers and return an
# array containing each number divided by 2. Assign the
# returned array to a variable named half_numbers and print
# its value using #p.

numbers = {
    high:   100,
    medium: 50,
    low:    10
}

num_arr = numbers.map {|key, value| value / 2}

p num_arr