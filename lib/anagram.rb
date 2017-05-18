class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(word_array)
    results = []
    original_word_split = @word.chars.sort
    word_array.each do |word|
      results << word if word.split(//).sort == original_word_split

    end
    results
  end
end
