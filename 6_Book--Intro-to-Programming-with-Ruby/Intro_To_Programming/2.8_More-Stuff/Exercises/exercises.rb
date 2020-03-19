# Write a program that checks if the sequence of characters
# "lab" exists in the following strings. If it does exist,
# print out the word.
#
# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"

words = ["labaratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

# Loop over array and call method on items
def word_loop(words)
  words.each do |word|
    lab_check(word) ? (puts word) : next
  end
end

# Check item for "lab"
def lab_check(word)
  /lab/.match(word.downcase)
end

word_loop(words)
