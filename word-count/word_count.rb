class Phrase
  def initialize(string)
    @words = string.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    @words.group_by(&:itself).transform_values(&:count)
  end
end

module BookKeeping
  VERSION = 1 
end