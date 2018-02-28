class Prime

  def self.nth(n)
    raise ArgumentError if n == 0
    candidate = 0
    primes = []
    until primes.count == n do
      primes << candidate if self.is_prime?(candidate)
      candidate += 1
    end
    primes.pop
  end

  def self.is_prime?(prime)
    return false if prime < 2
    (prime-1).downto(2).none? { |n| prime % n == 0 }
  end

end

module BookKeeping
  VERSION = 1 
end