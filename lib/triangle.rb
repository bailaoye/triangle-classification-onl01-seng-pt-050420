require 'pry'
class Triangle
  attr_accessor :sideA, :sideB, :sideC
  @sides = []

  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
    @sides = [sideA, sideB, sideC]
  end

  def kind
    if(negative? == true || valid? == false)
      raise TriangleError
    elsif(equilateral?)
      :equilateral
    elsif(scalene?)
      :scalene
    elsif(isosceles?)
      :isosceles
    end
  end

  def negative?
    @sides.each do |length|
      if(length <= 0)
        return true
      end
    end
  end

  def equilateral?
    (@sideA == @sideB) && (@sideA == @sideC)
  end

  def scalene?
    (@sideA != @sideB) && (@sideA!= @sideC) && (@sideB != @sideC)
  end

  def isosceles?
    (@sideB == @sideC) || (@sideA == @sideB) || (@sideA = @sideC)
  end

  def valid?
    (@sideA + @sideB > @sideC) && (@sideB + @sideC > @sideA) && (@sideA + @sideC > @sideB)
  end

end

class TriangleError < StandardError

end
