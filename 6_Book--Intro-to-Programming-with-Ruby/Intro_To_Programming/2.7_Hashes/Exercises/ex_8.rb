words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

anagrams = []

# Validator
# Takes words array, and index (i) as arguments.
# Split words into individual characters and returns result
def validator(word, i)
  word[i].split('')
end
# HOW TO: Call validator
# validator(words, i)

# Character Loop-Method
# First loop iterates over characters of word_1 ('sample'), while the second loop iterates
# over word_2 ('char'), and checks one at a time, each 'sample' against all 'char's and then
# moves on to the next instance of 'sample'.
def char_check(word_1, word_2, template_length)
  matches = [] # array for containing matching characters from word_2 ('char')
  $iterator = 0
  # Character loop
  word_1.each do |char_1|
    sample = char_1
    word_2.each do |char_2|
      if (sample == char_2)
        matches.push(char_2)
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

for i in 0..(words.length - 2) do
  template_length = words[i].length
  word_1_temp = validator(words, i)
  word_1 = words[i]
  for y in 1..(words.length - 1) do
    word_2_temp = validator(words, y)
    word_2 = words[y]
    if char_check(word_1_temp, word_2_temp, template_length) && (word_1 != word_2)
      anagrams.push([word_1, word_2])
    else
      puts "#{words[i]} and #{words[y+1]} are not anagrams"
    end
  end
end

