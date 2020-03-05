# Given a hash of family members, with keys as the title
# and an array of names as the values, use Ruby's built-in
# select method to gather only immediate family members'
# names into a new array.
puts "-----------------------------------------------------
1.)"

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


# Look at Ruby's merge method. Notice that it has two
# versions. What is the difference between merge and merge!?
# Write a program that uses both and illustrate the
# differences.
puts "-----------------------------------------------------
2.)"

puts "* merge -  Returns a new hash of the combined contents of the
receiver and given hashes. Duplicates are overriddden where the given
hash takes precedence"
puts "* merge! -  Returns a new hash of the combined contents of the
receiver and given hashes. Duplicates are overriddden where the given
hash takes precedence."

mighty_hash = {bestness: 1, superiority: 0.85, mightiness: "Ya' baby!"}

hashy_hash = {bestness: 0.8, superiority: 0.35, hashiness: 100}

# merge
mighty_hash.merge(hashy_hash)

# merge!
mighty_hash.merge!(hashy_hash)

