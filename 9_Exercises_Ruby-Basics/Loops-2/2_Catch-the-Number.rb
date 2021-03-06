# Modify the following code so that the loop stops if number is
# equal to or between 0 and 10.

loop do
  number = rand(100)
  number.between?(0,10) ? break : (puts number)
end


# LS solution:
loop do
  number = rand(100)
  puts number

  if number.between?(0, 10)
    break
  end
end