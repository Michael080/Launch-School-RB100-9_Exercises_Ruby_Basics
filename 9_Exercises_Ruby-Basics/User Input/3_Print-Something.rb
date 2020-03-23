# Write a program that asks the user whether they want the program
# to print "something", then print it if the user enters y.
# Otherwise, print nothing.

loop do
  puts ">> Print something?"
  input = gets.chomp
  if input == 'y'
    puts "Printing....
Printing...
Something."
    break
  end
end

