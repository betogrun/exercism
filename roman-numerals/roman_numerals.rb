
class Integer
  def roman_mapping
  {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }
end

  def to_roman
    result = ""
    number = self
    roman_mapping.each do |digit, letter|
      quotient = number / digit
      modulus = number % digit
      result << letter * quotient
      number = modulus
    end
    result
  end
end

module BookKeeping
  VERSION = 2
 end