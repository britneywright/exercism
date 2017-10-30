module BookKeeping
  VERSION = 3
end

class Binary
  def self.to_decimal(number)
    raise ArgumentError if number.chars.any? {|c| c > "1" }
    g = number.chars.reverse
    totals = []
    g.each_with_index do |item, index|
      totals << item.to_i * (2 ** index)
    end
    totals.reduce(:+)
  end
end
