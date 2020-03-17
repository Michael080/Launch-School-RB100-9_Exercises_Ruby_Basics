words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

word_1 = words[0]
word_2 = words[1]
temp_array = []
word_1_temp = words[6].split("")
word_2_temp = words[11].split("")

anagrams = []
chars = {}


# Validator
# Takes words array, and index (i) as arguments.
# Split words into individual characters and returns result

def validator(word, i)
  word[i].split('')
end
# HOW TO: Call validator
# validator(words, i)

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
  $iterator = 0
  # !!! below line is temporary for testing purposes
  # delete once not needed
  # template_length = word_1.length
  # Character loop
  word_1.each do |char|
    sample = char
    word_2.each do |char|
      # puts "#{sample} : #{char}"
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
  # puts matches
end
# HOW TO: Call char_check()
# char_check(word_1_temp, word_2_temp, template_length)
# irb: char_check(word_1_temp, word_2_temp, template_length=words[0].length)

# iterator = 1
# Main Loop
# !!! Fix self-check bug
for i in 0..(words.length - 2) do
  template_length = words[i].length
  word_1_temp = validator(words, i)
  word_1 = words[i]
  for i in 0..(words.length - 2) do
    word_2_temp = validator(words, i+1)
    word_2 = words[i+1]
    if char_check(word_1_temp, word_2_temp, template_length)
      anagrams.push([word_1, word_2])
    else
      puts "#{words[i]} and #{words[i+1]} are not anagrams"
    end
  end

  puts "Anagrams: #{anagrams}"
end

# array.length == word_2.length ? anagrams.push([word_1, word_2]) : (puts "Not anagrams :(")