# In the code below, an array containing different types of
# pets is assigned to pets.

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = []

# Select 'fish' and 'lizard' from pets at the same time,
# assign the return value to a variable named my_pets, then
# print the value of my_pets.

my_pets.push(pets.select { |pet| pet == 'fish' })
my_pets.push(pets.select { |pet| pet == 'lizard' })

puts my_pets


# LS solution:
my_pets = pets[2..3]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"