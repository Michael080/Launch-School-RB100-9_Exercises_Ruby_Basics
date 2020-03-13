words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

word_1 = words[4]
word_2 = words[5]
word_1_temp = words[4].split("")
word_2_temp = words[5].split("")
array = []
anagrams = []
template_length = word_2.length
$iterator = 0



word_1_temp.each do |char|
  sample = char
  word_2_temp.each do |char|
    puts "#{sample} : #{char}"
    if (sample == char)
      array.push(char)
      puts "$iterator:#{$iterator}  char:#{char}"
      word_2_temp.delete_at($iterator)
      $iterator += 1
    else
      $iterator += 1
      # break
    end
  end
end

array.length == word_2.length ? anagrams.push([word_1, word_2]) : (puts "Not anagrams :(")


