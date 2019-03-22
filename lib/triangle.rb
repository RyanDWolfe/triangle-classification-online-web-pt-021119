class Triangle

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    triangle_eval = [(a + b > c), (a + c > b), (b + c > a)]
    raise TriangleError if triangle_eval.include?(false)
    if a == b && b == c
      :equilateral
    elsif b == c || a == c || a == b
      :isosceles
    else
      :scalene
    end
  end
#(a <= 0), (b <= 0), (c <= 0)
  class TriangleError < StandardError

  end
end
