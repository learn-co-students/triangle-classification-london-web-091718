class Triangle
  # write code here
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    real
    if x == y && y == z
      return :equilateral
    elsif x == y || y == z || x == z
      return :isosceles
    else
      return :scalene
    end
  end

  def real
    triangle = [(x + y > z), (x + z > y), (y + z > x)]
    [x, y, z].each { |type| triangle << false if type <= 0 }
    raise TriangleError if triangle.include?(false)
  end


  class TriangleError < StandardError
  end
end
