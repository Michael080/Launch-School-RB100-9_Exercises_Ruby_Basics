# In the code below, an array containing different types of
# pets is assigned to pets.

pets = ['cat', 'dog', 'fish', 'lizard']

# Select 'fish' from pets, assign the return value to a
# variable named my_pet, then print the value of my_pet.
my_index = pets.index("fish")
my_pet = pets[my_index]
puts my_pet


# LS solution:
my_pet = pets[2]

puts "I have a pet #{my_pet}!"