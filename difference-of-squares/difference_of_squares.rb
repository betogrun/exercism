class Squares
    def initialize(number)
        @number = number
    end

    def difference
        square_of_sum - sum_of_squares 
    end

    def sum_of_squares
        @number.downto(1).inject(0) {|acc, n| acc += n **2 }
    end

    def square_of_sum
        @number.downto(1).inject(0,:+) ** 2
    end
end


module BookKeeping
  VERSION = 4
end