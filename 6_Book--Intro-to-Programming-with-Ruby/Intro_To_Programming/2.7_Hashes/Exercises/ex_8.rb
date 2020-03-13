words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

word_1 = words[4]
word_2 = words[5]
word_1_temp = words[4].split("")
word_2_temp = words[5].split("")

anagrams = []
template_length = word_2.length
$iterator = 0

# !!! Need to use 'Character Loop' in a method
# which will be called in 'Main Loop'
#   * Affected: var declarations/names maybe
#   * Method will return the words it checked?
#   * Will definitely return what is now called 'array' (for checking number of matches)

# Character Loop-Method
def char_check(word_1, word_2, template_length)
  array = []
  # Character loop
  word_1.each do |char|
    sample = char
    word_2.each do |char|
      puts "#{sample} : #{char}"
      # !!! May need to embed conditions in 'elsif' and 'else' w/in this if loop
      # * It looks like this first condition is not being tested before the loop
      # breaks
      if (array.length == template_length)
        return true
      elsif (sample == char)
        array.push(char)
        puts "$iterator:#{$iterator}  char:#{char}"
        word_2.delete_at($iterator)
        $iterator += 1
      else
        $iterator += 1
        # break
      end
    end
  end
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

