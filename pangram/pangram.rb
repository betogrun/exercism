class Pangram
  def self.pangram?(phrase)
    phrase.delete!("^a-zA-Z")
    ('a'..'z').all? { |letter| phrase.include? letter }
  end
end

 module BookKeeping
  VERSION = 6
 end