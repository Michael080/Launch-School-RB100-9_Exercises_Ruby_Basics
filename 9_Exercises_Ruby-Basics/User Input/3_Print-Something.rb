# Write a program that asks the user whether they want the program
# to print "something", then print it if the user enters y.
# Otherwise, print nothing.

loop do
  puts ">> Print something? (Enter 'y' (yes) or 'n' (no)"
  input = gets.chomp.downcase

  if (input == 'y' || input == 'n')

    if input == 'y'
      puts "Printing....
Printing...
Something."
      break
    else
      break
    end

  else
    puts ">> Please enter 'y (yes) or 'n' (no)"
    break
  end
end


# LS solution:
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'


# Further Exploration
# What happens if you type Y (in uppercase) instead of y
# in response to the prompt? This is a bad user experience:
# when obtaining input from a user, you should almost
# always allow both uppercase and lowercase entries. Can
# you modify this program so that it prints "something" if
# the user enters Y or y?
puts "Answer: I accounted for this in my previous answer."
