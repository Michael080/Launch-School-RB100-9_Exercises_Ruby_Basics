#Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. 

print "How old are you?"
age = gets.chomp
plus_ten = age.to_i + 10
plus_twenty = age.to_i + 20
plus_thirty = age.to_i + 30
plus_forty = age.to_i + 40
puts "In 10 years you will be:
#{plus_ten}"
puts "In 20 years you will be:
#{plus_twenty}"
puts "In 30 years you will be:
#{plus_thirty}"
puts "In 40 years you will be:
#{plus_forty}"



