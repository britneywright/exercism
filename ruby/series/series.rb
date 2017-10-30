class Series
  def initialize(number_string)
    @number_string = number_string
  end

  def number_string
    @number_string
  end

  def slices(number)
    raise ArgumentError if number > number_string.length
    g = 0
    a = []
    until g == number_string.length - number + 1
      a << number_string[g..g+number-1]
      g += 1
    end
    a
  end
end
