require 'pry'
class Triangle
  attr_accessor :sideA, :sideB, :sideC
  @triangle_sides = []

  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
    @triangle_sides = [sideA, sideB, sideC]
  end

  def negative?
    @triangle_sides.each do |length|
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
    (@sideB + @sideC > @sideA) && (@sideA + @sideB > @sideC) &&  (@sideA + @sideC > @sideB)
  end

  def kind
    if(negative? == true || valid? == false)
      raise triangle_sidesError
    elsif(equilateral?)
      :equilateral
    elsif(scalene?)
      :scalene
    elsif(isosceles?)
      :isosceles
    end
  end

end

class triangle_sidesError < StandardError

end
