class Grains

  def self.square(n)
    raise ArgumentError unless n.between?(1,64)
    self.hash[n]
  end
  
  def self.total
    self.hash.values.inject(:+)
  end

  def self.hash
    @hash ||= begin
      2.upto(64).each_with_object({1 => 1}) do |n, memo| 
        memo[n] = memo[n-1] * 2 
      end
    end
  end

end

module BookKeeping
  VERSION = 1 
end