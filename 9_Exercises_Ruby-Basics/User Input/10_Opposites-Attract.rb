# Write a program that requests two integers from the user,
# adds them together, and then displays the result.
# Furthermore, insist that one of the integers be positive,
# and one negative; however, the order in which the two
# integers are entered does not matter.
#
# Do not check for the positive/negative requirement until
# both integers are entered, and start over if the
# requirement is not met.
#
# You may use the following method to validate input
# integers:
validated_nums = false

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

while validated_nums == false
  # Request numbers
  puts "Enter one positive and one negative number"
  puts ">> First number:"
  num_1 = gets.chomp
  puts ">> Second number:"
  num_2 = gets.chomp

  sign_array = [0, 0] # [0] negatives -- [1] positives

  # Check that one positive and one negative are entered
  while validated_nums == false && valid_number?(num_1) == valid_number?(num_2)
    num_1 = num_1.to_i
    num_2 = num_2.to_i

    num_1 < 0 ? (sign_array[0] += 1) : (sign_array[1] += 1)
    num_2 < 0 ? (sign_array[0] += 1) : (sign_array[1] += 1)
    if sign_array[0] == sign_array[1] # verify valid input
      validated_nums = true
    else
      puts "ERROR! -- Please follow the instructions --"
      # Start over if not valid
      break
    end
  end
end

result = num_1 + num_2
puts "#{num_1} + #{num_2} = #{result}"


# LS solution:
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"