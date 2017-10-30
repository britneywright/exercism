require 'pry'

module RomanNumerals
  NUM_TO_ROMAN = {
    1000 => 'M',
    500 => 'D',
    100 => 'C',
    50 => 'L',
    10 => 'X',
    5 => 'V',
    1 => 'I'
  }

  def to_roman(string = '')
    b = ("1" + "0" * (self.to_s.length - 1)).to_i
    first_numeral = NUM_TO_ROMAN.find do |n,v|
      n / b - self / b == 1 ||
      divisble_by?(n)
    end
    if first_numeral[0] > self
      if self / b == 4
        string << NUM_TO_ROMAN.find { |n, v| n < first_numeral[0] }[1]
      else
        string << NUM_TO_ROMAN.find { |n, v| n == b }[1]
      end
      string << first_numeral[1]
      if (self - b * self.to_s[0].to_i) > 0
        (self - b * self.to_s[0].to_i).to_roman(string)
      else
        return string
      end
    end
    if first_numeral[0] - self == 0
      string << first_numeral[1]
      return string
    end
    if first_numeral
      string << first_numeral[1] * divisible_by_how_many(first_numeral[0])
      if divisible_by_how_many(first_numeral[0]) == self
        return string
      end
      binding.pry
      (self % first_numeral[0]).to_roman(string)
    end
    string
  end

  def divisble_by?(number)
    self % number < self
  end

  def divisible_by_how_many(number)
    self / number
  end

end

class Fixnum
  include RomanNumerals
end
