class Triangle
  # write code here
  attr_accessor :A, :B, :C
  @sides = []

  def initialize(A, B, C)
    @A = A
    @B = B
    @C = C
    @sides = [A, B, C]
  end

  end
  class TriangleError < StandardError
  end
end
