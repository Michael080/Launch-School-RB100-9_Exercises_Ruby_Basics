a = [1, 2, 3]
b = a.map { |x| x**2 }
puts b

#example showing map returning new array
puts "------------------"

a.map { |x| puts x**2 }
puts "returns: 1, 4, 9
=> [nil, nil, nil]"

#if no block is given, map returns Enumerator:
puts "------------------"

a.map
puts "returns:
#<Enumerator: [1, 2, 3]:map>"