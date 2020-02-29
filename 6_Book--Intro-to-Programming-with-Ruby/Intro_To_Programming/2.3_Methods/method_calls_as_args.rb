def add(a, b)
  a + b 
end

def subtract(a, b)
  a - b 
end

puts add(20, 45)

puts subtract(80, 10)


def multiply(num1, num2)
  num1 * num2
end

#call multiply w/ add and subtract as arguments
puts multiply(add(20, 45), subtract(80, 10))

# a more complex example
puts add(subtract(80, 10), multiply(add(20, 45), subtract(80, 10)))

