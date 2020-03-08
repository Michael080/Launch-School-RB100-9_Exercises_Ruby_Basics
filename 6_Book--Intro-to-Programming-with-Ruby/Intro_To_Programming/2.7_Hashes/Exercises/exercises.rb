# Given a hash of family members, with keys as the title
# and an array of names as the values, use Ruby's built-in
# select method to gather only immediate family members'
# names into a new array.
puts "-----------------------------------------------------
1.)"

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"] }

# Using fetch()
# atomic_fam = family.fetch_values(:sisters, :brothers).to_a
# puts "#{atomic_fam}"

# ANSWER
atomic_fam = family.select { |k, v| (k == :sisters) || (k == :brothers) }.to_a
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

mighty_hash = { bestness: 1, superiority: 0.85, mightiness: "Ya' baby!" }

hashy_hash = { bestness: 0.8, superiority: 0.35, hashiness: 100 }

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

#==========================================================
puts "-----------------------------------------------------
4.)"
# Given the following expression, how would you access the
#  name of the person?

person = { name: 'Bob', occupation: 'web developer', hobbies: 'painting' }

person.fetch(:name)

# What method could you use to find out if a Hash contains a
# specific value in it? Write a program to demonstrate this
# use.
puts "-----------------------------------------------------
5.)"

# Method that returns specific value from a hash
def value_check(hash, value)
  hash.select { |k, v| v == value }
end

# Check 'person' for value: 'web developer'
value_check(person, 'web developer')

#==========================================================
puts "-----------------------------------------------------
6.)"
# Given the following code...

x = "hi there"
my_hash = { x: "some value" }
my_hash2 = { x => "some value" }

# What's the difference between the two hashes that were created?

puts "the key-name for my_hash doesn't use the value for var x,
where the key-name for my_hash2 does."

#==========================================================
puts "-----------------------------------------------------
7.)"

# If you see this error, what do you suspect is the most
# likely problem?

# NoMethodError: undefined method `keys' for Array

puts "B - There is no method called 'keys' for Array objects"

#==========================================================
puts "-----------------------------------------------------
8.)"

# Challenge: Given the array...

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

# Write a program that prints out groups of words that are
# anagrams. Anagrams are words that have the same exact
# letters in them but in a different order. Your output
# should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]

# ACTUAL FIRST STEP:
# Split each word into individual characters

# 1) Loop over array:

# 3) Check letters and return boolean true if (match is found)
def anagrammer(word_1, word_2)
  # Split word_1 and word_2 into individual characters
  anagrams = []
  word = word_1.split('')
  next_word= word_2.split('')
  complete = word.length - 1
  for i in 0..(complete) do
    current_char = word_1[i]
    matches = 0 # track number of matches
    if (char_check(current_char, next_word) == false)
      return
    else
      check_complete?(i, complete)? (anagrams += [word_1, word_2]) : next
    end
    return anagrams
  end
  # if (i == word_2.length) && (matches != word_2.length)
  #   return
  # else
  # end
end

def check_complete?(i, complete)
  i == complete ? true : false
end

def char_check(character, word)
  matches = 0
  for i in 0..(word.length - 1) do
    # check for matching characters
    # (character == word[i]) ? word.delete_at(i) : false
    if character == word[i]
      word.delete_at(i)
      matches+=1
    end
  end
  if i == word.length - 1
    if (i == word.length - 1) && (matches != word.length)
      puts "No matches for #{character}"
      return false
    else
      return true
    end
  end
end

# !Match
test1 = words[0]
test2 = words[1]
anagrammer(test1, test2)

# Match
test3 = words[3]
test4 = words[6]
anagrammer(test3, test4)

# Create array of matches
anagram = []
anagrammer(test3, test4)

anagrammer(test1, test2)? anagram+=anagrammer(test1, test2) : (puts "'#{test1}' is not an anagram of '#{test2}'")
anagrammer(test3, test4)? anagram+=[anagrammer(test3, test4)] : (puts "'#{test3}' is not an anagram of '#{test4}'")

# 2) Stop @ next item:
# 4) Check letters and return boolean false if (match is not found)
# 4.1 If (any false result) return to step 2
# 5) If (zero false results)
# 5.1) Save item to a new array called 'anagram'
# 5.2) Return to step 2
#
