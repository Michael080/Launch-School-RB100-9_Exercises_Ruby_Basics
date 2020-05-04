# Modify the following code so that double-quotes are used
# instead of single-quotes.
puts "----------
myAnswer"
# puts 'It\'s now 12 o\'clock.'
puts "It's now 12 o'clock."

# LS Discussion (alternatives):
%Q(It's now 12 o'clock.) # => "It's now 12 o'clock."


#Further Exploration
# It's possible to write a string without surrounding it with
# double- or single-quotes. Instead of using double-quotes,
# we could write the example string like this
%Q(It's now 12 o'clock.) # => "It's now 12 o'clock."
# %Q is an alternative to double-quoted strings. There's also
# an alternative for single-quoted strings: %q.
#
# What about strings that contain double- and single-quotes?
# How would you write those using the alternate syntax?
puts "----------
further exploration:"

puts %Q(here and) + %q{ here}

