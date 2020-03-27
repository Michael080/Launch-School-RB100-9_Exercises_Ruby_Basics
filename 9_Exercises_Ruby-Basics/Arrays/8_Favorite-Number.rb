# =======================================================
# Favorite Number (Part 1)
#
# The following array contains three names and numbers.
# Group each name with the number following it by
# placing the pair in their own array. Then create a
# nested array containing all three groups. What does
# this look like? (You don't need to write any code here.
# Just alter the value shown so it meets the exercise
# requirements.)

[['Dave', 7], ['Miranda', 3], ['Jason', 11]]


# =======================================================
# Favorite Number (Part 2)
#
# In the code below, a nested array containing three groups
# of names and numbers is assigned to favorites.

# [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# Use Array#flatten to flatten favorites so that it's no
# longer a nested array. Then assign the flattened array to
# a variable named flat_favorites and print its value using
# #p.

flat_favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]].flatten

p flat_favorites