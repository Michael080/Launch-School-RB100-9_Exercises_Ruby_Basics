# Write a program that asks the user for their age
# in years, and then converts that age to months.
puts "----------
myAnswer:"

def age_in_months(age)
  age.to_i * 12
end

puts "What is your age in years?"
age = gets.chomp

puts "Your #{age_in_months(age)} months old!"


# LS solution:
puts "----------
ls solution:"

puts '>> What is your age in years?'
age_in_years = gets
age_in_months = 12 * age_in_years.to_i
puts "You are #{age_in_months} months old."


# Further Exploration
# What happens if you enter a non-numeric value for the age?
puts "----------
Further exploration:"

puts "Answer: If you enter a non-numeric value 'age_in_months'
will evaluate to 0 because strings converted to integers via
to_i evaluate to 0."