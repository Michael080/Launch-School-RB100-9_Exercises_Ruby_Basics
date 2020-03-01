# case_statement.rb

a = 5

case a 
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end


# refactored:

a = 5

result = case a 
when 5
  "a is 5"
when 6
  "a is 6"
else
  "a is neither 5, nor 6"
end

puts answer


# case with no arg

a = 5

case  
when a == 5
  #each case needs to be 'fully-tested' w/ this approach
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end