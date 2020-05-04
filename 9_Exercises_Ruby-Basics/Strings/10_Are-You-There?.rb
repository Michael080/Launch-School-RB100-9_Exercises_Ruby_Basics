# Using the following code, print true if colors includes
# the color 'yellow' and print false if it doesn't. Then,
# print true if colors includes the color 'purple' and
# print false if it doesn't.
puts "---------
myAnswer"
colors = 'blue pink yellow orange'

/yellow/.match(colors) ? puts("true") : puts("false")
/purple/.match(colors) ? puts("true") : puts("false")


# LS solution:
puts "---------
ls solution:"
colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')


# Further Exploration
# Let's say colors is changed to the following value:
#
puts "---------
further exploration"
colors = 'blue boredom yellow'
# and we invoke #include? as we did before:
#
puts colors.include?('red')
# What will the output be? Why?
puts "Answer: The output will be 'true' because 'red'
is in the word 'boredom'"