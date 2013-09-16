get '/:user_input' do
  word = params[:user_input]
  anagram_version = word.downcase.chars.sort.join
  # anagram_object = Anagram.find_by_anagramized_word(anagram_version)
  all_anagrams = find_anagram(anagram_version).words
  # all_anagrams = anagram_object.words
  # Anagram.where(:anagramized_word => anagram_version)
  anagrams = all_anagrams.map {|x| x.word}
  
  "For your word, #{word}, the anagrams are: #{anagrams.join(", ")}"
end

