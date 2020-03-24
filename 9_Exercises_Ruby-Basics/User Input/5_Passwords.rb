# Write a program that displays a welcome message,
# but only after the user enters the correct
# password, where the password is a string that
# is defined as a constant in your program. Keep
# asking for the password until the user enters
# the correct password.

PASSWORD = "WoWzerz!"
USERNAME = "ZaphodB_3000"

loop do
  puts ">> Username:"
  username = gets.chomp

  puts ">> Password:"
  user_pass = gets.chomp

  break if user_pass == PASSWORD && username == USERNAME
  puts ">> The username and password you entered are incorrect"
end

puts "Welcome sire"


# LS solution:
USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your user name:'
  user_name = gets.chomp

  puts '>> Please enter your password:'
  password_try = gets.chomp

  break if user_name == USERNAME && password_try == PASSWORD
  puts '>> Authorization failed!'
end

puts 'Welcome!'





