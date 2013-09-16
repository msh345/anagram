class Anagram < ActiveRecord::Base
  has_many :words

  def self.find_anagrams(anagram_version)
    Anagram.find_by_anagramized_word(anagram_version)
  end

  def self.find_or_create_anagram(word)
    Anagram.find_or_create_by_anagramized_word(word)
  end

end
