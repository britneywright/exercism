require 'pry'

module BookKeeping
  VERSION = 2
end

module RomanNumerals
  NUM_TO_LETTER = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }

  def to_roman(conversion = '')
    return conversion if self == 0
    number, letter = NUM_TO_LETTER.select { |n, l| n <= self }.max
    conversion << letter * (self / number)
    (self % number).to_roman(conversion)
  end
end

class Fixnum
  include RomanNumerals
end

puts 1024.to_roman
