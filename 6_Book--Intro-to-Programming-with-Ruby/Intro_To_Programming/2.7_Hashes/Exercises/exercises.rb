# Given a hash of family members, with keys as the title
# and an array of names as the values, use Ruby's built-in
# select method to gather only immediate family members'
# names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
}

# Using fetch()
# atomic_fam = family.fetch_values(:sisters, :brothers).to_a
# puts "#{atomic_fam}"

# ANSWER
atomic_fam = family.select { |k,v| (k == :sisters) || (k == :brothers)}.to_a
# Delete ':sisters' hash key from array
atomic_fam.first.shift
# Delete ':brothers' hash key from array
atomic_fam.last.shift
# Remove nesting (flatten)
atomic_fam.flatten!

