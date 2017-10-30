module Filter
  def keep
    each_with_object([]) do |i, selections|
      selections << i if yield(i)
    end
  end

  def discard
    each_with_object([]) do |i, selections|
      selections << i unless yield(i)
    end
  end
end

class Array
  include Filter
end

puts [].keep
