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


# Using some of Ruby's built-in Hash methods, write a 
# program that loops through a hash and prints all of the 
# keys. Then write a program that does the same thing 
# except printing the values. Finally, write a program that 
# prints both.
puts "-----------------------------------------------------
3.)"

droogs = {
    Alex: {
        age: 15,
        interests: 'Ludwig Van, ultra-violence, and Moloko',
        quote: 'I see what is right and approve, but I do what is wrong'
    },
    Dim: {
        iq: 30,
        interests: 'unknown',
        preffered_moloko: 'Drencrom',
        quote: "I don't like you should do what you done and I'm not your
brother no more and wouldn't want to be"
    }
}

def print_keys(hash)
  hash.each do |keys|
    puts "Printing keys:
#{keys}"
  end
end

def print_values(hash)
  hash.each do |keys, values|
    puts "Printing values:
#{values}"
  end
end

def print_both(hash)
  hash.each do |keys, values|
    puts "Printing keys & values:
#{keys}: #{values}"
  end
end


print_keys(droogs)

print_values(droogs)

print_both(droogs)