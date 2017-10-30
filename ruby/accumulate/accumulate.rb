module BookKeeping
  VERSION = 1
end

module Accumulate
  def accumulate(&block)
    return to_enum unless block
    each_with_object([]) do |i, a|
      a << block.call(i)
    end
  end
end

class Array
  include Accumulate
end
