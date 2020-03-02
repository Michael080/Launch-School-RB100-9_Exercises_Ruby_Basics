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
a.first.delete(a.first.last)

puts "returns modified 'a':
['b', 1], ['b', 2], ['b', 3] etc,."
puts "&..."
puts "removes:
'1' of ['b', 1]"

puts "------------------------"

b = ["b", "a"]
b = b.product([Array(1..3)])
b.first.delete(b.first.last)

puts "returns modified 'b':
[['b', [1, 2, 3]], [a, [1, 2, 3]]]"
puts "&..."
puts "removes:
[1, 2, 3] of ['b', [1, 2, 3]"


#How do you return the word "example" from the
# following array?

arr = [["test", "hello", "world"],["example", "mem"]]
