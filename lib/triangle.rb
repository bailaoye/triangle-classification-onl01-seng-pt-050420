class Triangle
  # write code here
  attr_accessor :sideA, :sideB, :sideC
  @sides = []

  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
    @sides = [sideA, sideB, sideC]
  end

  class TriangleError < StandardError
  end
end
