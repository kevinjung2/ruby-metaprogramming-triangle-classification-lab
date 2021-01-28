class Triangle
  # write code here
  attr_accessor :l1, :l2, :l3, :type
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end
  def kind
    if self.l1 <= 0 || self.l2 <= 0 || self.l3 <= 0
      raise TriangleError
    elsif self.l1 + self.l2 <= self.l3 || self.l2 + self.l3 <= self.l1 || self.l3 + self.l1 <= self.l2
      raise TriangleError
    elsif self.l1 == self.l2 && self.l2 == self.l3
      self.type = :equilateral
    elsif self.l1 != self.l2 && self.l2 != self.l3 && self.l3 != self.l1
      self.type = :scalene
    else
      self.type = :isosceles
    end
  end
  class TriangleError < StandardError
    def message
      "oof"
    end
  end
end
