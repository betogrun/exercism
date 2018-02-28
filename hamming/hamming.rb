class Hamming

  def self.compute(s1,s2)
    raise ArgumentError, "Strands don't have the same size" if s1.size != s2.size
    s1.each_char.zip(s2.each_char).count {|c1,c2| c1 != c2}
  end
  
end

 module BookKeeping
     VERSION = 3
   end