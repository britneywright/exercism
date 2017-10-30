require 'pry'

module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def phrase
    @phrase
  end

  def word_count
    g = @phrase.split(/[^'\w]/).each do |k|
      k.delete!("'") if (/'\w*'/).match(k)
    end
    b = g.group_by { |k| k.downcase }
    b.each do |k,v|
      b.store(k, v.length)
    end
    b.reject do |k, v|
      k.length == 0
    end
  end
end
