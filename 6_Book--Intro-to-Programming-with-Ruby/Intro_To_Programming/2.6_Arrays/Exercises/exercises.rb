# Below we have given you an array and a number.
# Write a program that checks to see if the
# number appears in the array.
puts "1.)"
arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(number)


# What will the following programs return? What
# is the value of arr after each?
puts "=======================
2.)"

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
puts "=======================
3.)"

arr = [["test", "hello", "world"], ["example", "mem"]]

#ANSWER
puts arr.last[0]


# What does each method return in the following example?
puts "=======================
4.)"

arr = [15, 7, 18, 5, 12, 8, 5, 1]

#1.)
arr.index(5)
puts "=>  3"
#2.)
arr.index[5]
puts "=>  error!"
#3.)
arr[5]
puts "=>  8"


# # What is the value of a, b, and c in the following program?
puts "=======================
5.)"

string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]

puts "string[6] =>  'e'"
puts "string[11] =>  'A'"
puts "string[19] =>  'nil'"

#===================================================
puts "=======================
6.)"
# You run the following code.

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

#...and get the following error message:

# TypeError: no implicit conversion of String into Integer
# from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

# What is the problem and how can it be fixed?

puts "The problem is that names['margaret'] is attempting to slice the array
using a string value. The above code can be refactored as follows:
names[3] = 'jody'"


# Use the each_with_index method to iterate through
# an array of your creation that prints each index
# and value of the array.
puts "=======================
7.)"

arrayish = ["What", "a", "dope", "array", "bro", "!"]

arrayish.each_with_index { |value, id| puts "#{id + 1}) #{value}" }


# Write a program that iterates over an array and
# builds a new array that is the result of incrementing
# each value in the original array by a value of 2. You
# should have two arrays at the end of this program, The
# original array and the new array you've created. Print
# both arrays to the screen using the p method instead
# of puts.
puts "=======================
8.)"

temp_arr =[1, 2, 3, 4]

mutant = temp_arr.map { |a| (a+2)}

puts "#{mutant}"


