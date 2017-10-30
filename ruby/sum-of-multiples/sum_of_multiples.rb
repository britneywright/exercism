module BookKeeping
  VERSION = 1
end

class SumOfMultiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def multiples
    @multiples
  end

  def to(number)
    multiples.each_with_object([]) do |m, a|
      mulitply_by = 0
      until (m * mulitply_by) >= number
        a << (m * mulitply_by)
        mulitply_by += 1
      end
    end.uniq.reduce(:+) || 0
  end
end
