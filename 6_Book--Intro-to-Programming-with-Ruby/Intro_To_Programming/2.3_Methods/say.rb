# puts "hello"
# puts "hi"
# puts "how are you"
# puts "I'm fine"

# or as a method:

def say(words ='hello')
  puts words + '.'
end

say("hello")
say("hi")
say("how are you")
say("fine")

#==================================
#       Method Definition and Local Variable Scope
puts "=================="

a = 5

def some_method
  a = 3
end

puts a

# Method invocation w/ a block
puts "==================="

[1, 2, 3].each do |num|
  puts num
end

