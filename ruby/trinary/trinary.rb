module BookKeeping
  VERSION = 1
end

class Trinary
  attr_reader :number_string

  def initialize(number_string)
    @number_string = number_string
  end

  def to_decimal
    return 0 if trinary_invalid?
    number_string.chars.reverse.each_with_index.map do |l, i|
      l.to_i * 3**i
    end.reduce(:+)
  end

  def trinary_invalid?
    number_string.chars.any? { |e| e > '2' }
  end
end
