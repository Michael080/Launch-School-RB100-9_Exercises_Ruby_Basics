#Add two strings together that, when concatenated, return your first and last name as your full name in one string.

first_name = 'Michael'
last_name = 'Rollin'

puts first_name + ' ' + last_name




#Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

my_num = 3875
thousands = my_num / 1000
hundreds = (my_num % 1000) / 100
tens = (my_num % 1000 % 100) / 10
ones = (my_num % 1000 % 100 % 10) / 1

puts "thousands place: = #{thousands}"

puts "hundreds place: = #{hundreds}"

puts "tens place: = #{tens}"

puts "ones place: = #{ones}"




#Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.

#groundhog_day 1993

#ghostbusters 1984

#where_the_buffalo_roam 1980

#lost_in_translation 2003

bill_murray_films = {
  :groundhog_day => 1993,
  :ghostbusters => 1984,
  :where_the_buffalo_roam => 1980,
  :lost_in_translation => 2003
  }

puts "Groundhog Day: #{bill_murray_films[:groundhog_day]}"
puts "Ghostbusters: #{bill_murray_films[:ghostbusters]}"
puts "Where The Buffalo Roam #{bill_murray_films[:where_the_buffalo_roam]}"
puts "Lost In Translation #{bill_murray_films[:lost_in_translation]}"

#solution:
#NOTE: they specified each element of the hash a bit more specific

movies = {:blammo => 2345}

puts movies[:blammo]

#Ruby docs show an alternative way of declaring hashes:

bill_murray_films_revised = {groundhog_day_revised: 1993}


puts bill_murray_films_revised[:groundhog_day_revised]




#Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

my_array = [1993, 1980, 1984, 2003]

puts my_array[0]
puts my_array[1]
puts my_array[2]
puts my_array[3]




#Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

# num = 5
# def factorial(num)
#   i = 0

#   loop do
#     i += 1
#     factored = num * (num - 1)
#     puts "factored: #{factored}"
#   if i == 5
#     puts factored
#     break
#   end
# end

#NOTE: !!! This was not my solution to the problem. Could not test out this code and stopped because of a syntax error that I haven't figured out...YET

#SOLUTION (from video):
#NOTE: Their solution was not nearly as involved as I expected! I did not capture every solution as it is uninteresting etc,.

fact_six = 6 * 5 * 4 * 3 * 2 * 1
puts fact_six

  















