class Triangle

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if condition
      :equilateral
    elsif condition
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

  end
end
