# Given the following code, use Array#each to print the
# plural of each word in words.

words = 'car human elephant airplane'
words_arr = words.split(" ")

words_arr.each do |word|
  puts word + "s"
end