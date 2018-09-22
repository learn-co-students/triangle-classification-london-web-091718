class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1 || @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
      # puts TriangleError.message
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    # def message
    #   "Invalid Triangle! Please supply valid lengths for the sides of the Triangle!"
    # end
  end
end
