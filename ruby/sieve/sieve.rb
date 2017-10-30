require 'benchmark'

module BookKeeping
  VERSION = 1
end

# class Sieve
#   attr_reader :number
#
#   def initialize(number)
#     @number = number
#   end
#
#   def primes
#     list = (2..number).to_a
#     list.each do |prime|
#       list.reject! do |num|
#         num > prime && num % prime == 0
#       end
#     end
#   end
# end

class Sieve
  def initialize(number)
    @number = number
  end

  def number
    @number
  end

  def primes
    list_of_nums = (2..number).to_a
    figure_out_primes(list_of_nums)
  end

  def figure_out_primes(list, greens=[])
    return greens if list.empty?
    d = list.first
    new = list.select do |n|
      next if n == d
      is_divisible?(n,d)
    end
    blacks = list - new
    greens = greens << blacks.shift
    figure_out_primes(blacks, greens)
  end

  def is_divisible?(n, d)
    n % d == 0
  end
end


puts Benchmark.measure { Sieve.new(1).primes }
puts Benchmark.measure { Sieve.new(2).primes }
puts Benchmark.measure { Sieve.new(10).primes }
puts Benchmark.measure { Sieve.new(13).primes }
puts Benchmark.measure { Sieve.new(1000).primes }
