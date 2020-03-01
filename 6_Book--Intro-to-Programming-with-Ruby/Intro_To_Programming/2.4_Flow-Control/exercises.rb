# Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.
puts "======================
1."

(32 * 4) >= 129
puts "false"

false != !true
puts "false"

true == 4
puts "false"

false == (847 == '874')
puts "true"

(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
puts "true"


# Write a method that takes a string as argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
puts "======================
2."

def cap_ten(string)
  if string.length > 10
    puts "This string is too long"
  else
    string.upcase
  end
end

puts cap_ten("blammo")
puts cap_ten("Incredibly very too long string")