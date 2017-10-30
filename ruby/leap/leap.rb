module BookKeeping
  VERSION = 3
end

class Year
  def self.leap?(year)
    year.divisible_by?(4) && !year.divisible_by?(100) || year.divisible_by?(400)
  end
end

module Divisible
  def divisible_by?(number)
    self % number == 0
  end
end

class Fixnum
  include Divisible
end
