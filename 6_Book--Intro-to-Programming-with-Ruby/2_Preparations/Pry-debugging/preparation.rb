#preparation.rb
require "pry"

a = [1, 2, 3]
a << 4
binding.pry    #execution will pause her, allowing                  you to inspect all objects. Similar                  to breakpoints in JS
puts a
