require 'pry'
module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(position, list = [2])
    raise ArgumentError if position.zero?
    find_number(position, list)
  end

  def self.find_number(position, list, number = list[-1])
    if list.length < position
      if list.none? { |n| number % n == 0 }
        list << number
      end
      find_number(position, list, number + 1)
    end
    list[-1]
  end
end
