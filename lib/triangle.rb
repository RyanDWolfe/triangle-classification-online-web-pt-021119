class Triangle

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if [a, b, c].each {|value| value <= 0 }
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif b == c || a == c || a == b
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

  end
end
