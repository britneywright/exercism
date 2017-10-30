module BookKeeping
  VERSION = 1
end

class Grains
  def self.square(number)
    raise ArgumentError if number <= 0 || number > 64
    (1..number).each_with_object([]) do |square, a|
      square == 1 ? a << 1 : a << a.last * 2
    end.last
  end

  def self.total
    square(64) * 2
  end
end
