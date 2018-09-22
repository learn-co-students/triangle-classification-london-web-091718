require 'pry'

class Triangle

  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if @length1 <= 0 || @length2 <= 0 || @length3 <= 0 || @length1 >= @length2 + @length3 || @length2 >= @length3 + @length1 || @length3 >= @length1 + @length2
        raise TriangleError
    elsif @length1 == @length2 && @length2 == @length3
      :equilateral
    elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
      :isosceles
    else @length1 != @length2 || @length2 != @length3 || @length1 != @length3
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Please enter valid length for each side of the triange."
    end
  end
end
