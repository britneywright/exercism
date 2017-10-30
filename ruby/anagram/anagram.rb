module BookKeeping
  VERSION = 2
end

class Anagram
  def initialize(word)
    @word = word
  end

  def match(list)
    list.select do |w|
      @word.downcase != w.downcase &&
      w.downcase.chars.sort == @word.downcase.chars.sort
    end
  end
end
