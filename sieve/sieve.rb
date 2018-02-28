class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes 
    2.upto(@limit).select {|n| self.prime?(n) }
  end

  def prime?(number)
    (number-1).downto(2).none? {|n| number % n == 0}
  end
end

 module BookKeeping
  VERSION = 1
 end