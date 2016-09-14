module BookKeeping
  VERSION = "?" # Where the version number matches the one in the test.
end

class Sieve
  def initialize(limit)
    @limit = limit
    @composites = {}
  end

  def primes
    current_number = 2
    while current_number <= @limit
      multiplier = 2
      while (current_number * multiplier) <= @limit
        @composites[current_number * multiplier] = "Composite"
        multiplier += 1
      end

      current_number += 1
    end

    (2..@limit).select{|number| number unless @composites[number]}
  end
end
