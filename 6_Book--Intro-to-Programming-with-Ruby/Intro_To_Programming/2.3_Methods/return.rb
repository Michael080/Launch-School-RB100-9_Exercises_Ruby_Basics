def add_three(number)
  number += 3
end

returned_value = add_three(4)
puts returned_value

#same code but with a return keyword in the method:
puts "===================="

def add_threee(number)
  return number += 3
  #this method would return the value regarless of whether the return keyword is present or not
end

puts add_threee(4)