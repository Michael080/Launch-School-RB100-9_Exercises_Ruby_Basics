words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

word_1 = words[0]
word_2 = words[1]
word_1_temp = words[6].split("")
word_2_temp = words[11].split("")

anagrams = []
template_length = word_2.length
$iterator = 0

# Method that splits takes array indices as arguments and returns the words split into individual
# characters for easy comparing and checks that they are valid 'anagram candidates' by checking that they
# are of equal length
def valid_length(word_1, word_2)
  word_1.length == word_2.length ? true : false
end

# Split words into individual characters and assign to new hash for comparing
chars = {}

def validator(word_1, word_2, chars)
  chars[:word_1_temp] = word_1.split('')
  chars[:word_2_temp] = word_2.split('')
  return chars
end

# Call validator
validator(words[i], words[i+1], chars)

# !!! Need to use 'Character Loop' in a method
# which will be called in 'Main Loop'
#   * Affected: var declarations/names maybe
#   * Method will return the words it checked?
#   * Will definitely return what is now called 'array' (for checking number of matches)

# Character Loop-Method
# First loop iterates over characters of word_1 ('sample'), while the second loop iterates
# over word_2 ('char'), and checks one at a time, each 'sample' against all 'char's and then
# moves on to the next instance of 'sample'.
def char_check(word_1, word_2, template_length)
  matches = [] # array for containing matching characters from word_2 ('char')
  # Character loop
  word_1.each do |char|
    sample = char
    word_2.each do |char|
      puts "#{sample} : #{char}"
      if (sample == char)
        matches.push(char)
        # puts "$iterator:#{$iterator}  char:#{char}"
        word_2.delete_at($iterator)
        $iterator += 1
      else
        $iterator += 1
      end
    end
  end
  # Check that the number of matches implies an anagram
  matches.length == template_length ? true : false
end

# Test char_check returns true when passed anagrams:
puts char_check(word_1_temp, word_2_temp, template_length)

# Main Loop
# words.each_index do |word|
#   char_check(word_1, word_2)
# end




# array.length == word_2.length ? anagrams.push([word_1, word_2]) : (puts "Not anagrams :(")
#
#
# is_anagram(word_1, word_2, array)

