class Complement

  def self.of_dna(s)
    complements = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
    return '' if s =~ /[^GCAT]/
    s.gsub(/[GCAT]/, complements)
  end
end

module BookKeeping
  VERSION = 4 
end