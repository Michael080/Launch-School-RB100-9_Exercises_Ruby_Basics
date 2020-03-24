# Write a program that displays a welcome message,
# but only after the user enters the correct
# password, where the password is a string that
# is defined as a constant in your program. Keep
# asking for the password until the user enters
# the correct password.

PASSWORD = "WoWzerz!"

loop do
  puts ">> Enter password:"
  input = gets.chomp
  input == PASSWORD ? break : next
end

puts "Welcome sire"





