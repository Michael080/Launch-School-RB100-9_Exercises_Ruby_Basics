# Write a loop that prints numbers 1-5 and whether the number is
# even or odd. Use the code below to get started.

count = 1

loop do
  until count > 5 do
    if count % 2 == 0
      puts "#{count} is even"
      count += 1
    else
      puts "#{count} is odd"
      count += 1
    end
  end
  break
end


# LS solution:
count = 1

loop do
  if count.even?
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end

  break if count == 5
  count += 1
end