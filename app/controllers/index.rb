get '/:user_input' do
  word = params[:user_input]
  canonized_version = word.downcase.chars.sort.join
  anagram_list = Anagram.find_anagrams(canonized_version)
  anagram_list = anagram_list.words
  anagrams = anagram_list.map {|x| x.word}  
  "For your word, #{word}, the anagrams are: #{anagrams.join(", ")}"
end





  # anagram_object = Anagram.find_by_anagramized_word(anagram_version)
  # anagram_list = anagram_object.words
  # Anagram.where(:anagramized_word => anagram_version)
