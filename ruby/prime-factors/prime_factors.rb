class PrimeFactors
  def self.for(natural_number, factors = [], factor = natural_number, prime = 2)
    return factors if natural_number < 2
    until factors.reduce(:*) == natural_number
      if factor % prime == 0
        factors << prime
        if factor / prime > 1
          PrimeFactors.for(natural_number, factors, factor/prime)
        end
      else
        prime += 1
      end
    end
    factors
  end
end
