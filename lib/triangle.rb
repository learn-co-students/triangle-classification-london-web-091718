class Triangle

  attr_reader :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    # binding.pry
    is_triangle?
    if l1 == l2 && l1 == l3
      :equilateral
    elsif l1 == l2 || l1 == l3 || l2 == l3
      :isosceles
    else
      :scalene
    end
  end

  def is_triangle?
    if (l1+l2>l3 && l2+l3>l1 && l3+l1>l2) && (l1 > 0 && l2 > 0 && l3 > 0)
      true
    else raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "Your triangle is not valid."
    end
  end

end
