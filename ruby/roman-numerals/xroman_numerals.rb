require 'pry'

module RomanNumerals
  LETTERS = {1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X', 5 => 'V', 1 => 'I' }

  def to_roman(numerals = '')
    if self == 1
      numerals << LETTERS[1]
      return numerals
    end
    letter = LETTERS.find { |k, v| k <= self + (10 ** (self.to_s.length - 1)) }
    if self - letter[0] == 0
      numerals << letter[1]
    elsif letter[0] - self >= 1
      (letter[0] - self).to_roman(numerals)
      numerals << letter[1]
    elsif self > letter[0]
      numerals << letter[1]
      (self - letter[0]).to_roman(numerals)
    end

    numerals
  end
end
class Fixnum
  include RomanNumerals
end
