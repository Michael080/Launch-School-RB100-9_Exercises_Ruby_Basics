#What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?

x = 0
3.times do
  x += 1
end
puts x

# prints 3 to screen. 
# the times loop has access to x as it is declared in the global scope

y = 0
3.times do
  y += 1
  x = y
end
puts x

# throws and 'undeclared var' error.
# x is declared w/in the block so can not be accessed in the outer environment