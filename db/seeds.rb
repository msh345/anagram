
File.open('/usr/share/dict/words','r') do |file|
  file.each do |word|
    another_word = word.chomp.downcase.chars.sort.join
    ang = find_or_create_anagram(another_word)
    new_word = Word.new(word: word.downcase.chomp)
    ang.words << new_word
  end
end


# last_25_lines = `tail -n 25 /usr/share/dict/words`



# array = last_25_lines.split("\n")



# array.each do |word| 
#   ang = Anagram.find_or_create_by_anagramized_word(word.downcase.chars.sort.join)
#   new_word = Word.new(word: word)
#   ang.words << new_word
# end
