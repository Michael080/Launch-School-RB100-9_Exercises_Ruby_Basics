# Below we have given you an array and a number.
# Write a program that checks to see if the
# number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(number)


# What will the following programs return? What
# is the value of arr after each?
puts "======================="

a = ["b", "a"]
a = a.product(Array(1..3))
puts a.first.delete(a.first.last)

puts "returns:
['b', 1], ['b', 2], ['b', 3] etc,."
puts "&..."
puts "removes:
'1' of ['b', 1]"

puts "------------------------"

# b = ["b", "a"]
# arr = arr.product([Array(1..3)])

# arr.first.delete(arr.first.last)
