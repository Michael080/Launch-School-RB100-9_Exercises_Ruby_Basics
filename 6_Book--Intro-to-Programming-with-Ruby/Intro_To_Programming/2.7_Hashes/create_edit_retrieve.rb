# Create
person = {height: '6 ft', weight: '160 lbs'}


# Add to existing:
person[:hair] = 'brown'
person[:age] = 62


# Delete item:
person.delete(:age)


# Retrieve item:
person[:weight]


# Merge hashes:
new_hash = {blammo: "shablow!"}
person.merge!(new_hash)       #w/out bang operator merge creates new hash


