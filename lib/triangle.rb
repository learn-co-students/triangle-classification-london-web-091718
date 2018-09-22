class Triangle

attr_accessor :first,:second,:third

def initialize(first,second,third)
  @second=second
  @first=first
  @third=third
end



def kind
  if @first <= 0 || @second <= 0 || @third <=0
    begin
      raise TriangleError

    puts error.message_one
    end
  elsif @second+@third <= @first || @first+@third<=@second || @first+@second<=@third
    begin
      raise TriangleError

      puts error.message_one
    end
  elsif @second==@first && @second == @third
    return :equilateral
  elsif @second == @third && @second != @first
    return :isosceles
  elsif @first == @second && @second != @third
    return :isosceles
  elsif @first == @third && @first != @second
    return :isosceles
  elsif @first != @second && @first != @third && @second != @third
    return :scalene
    begin
      raise TriangleError

      puts error.message_one
    end
  end
end

class TriangleError < StandardError
  def message_one
    "This is an invalid triangle"
  end
end



end
