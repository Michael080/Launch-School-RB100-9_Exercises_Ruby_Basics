# Write a program that asks the user for their age
# in years, and then converts that age to months.

def age_in_months(age)
  age.to_i * 12
end

puts "What is your age in year?"
age = gets.chomp

puts "Your #{age_in_months(age)} months old!"

