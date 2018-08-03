class Triangle
attr_accessor :side0, :side1, :side2, :equilateral, :isosceles, :scalene, :triangle_array

  def initialize(side0:, side1:, side2:)
      @side0 = side0
      @side1 = side1
      @side2 = side2
      @triangle_array == [side0, side1, side2]
  end

  def kind(equilateral:, isosceles:, scalene:)
    if @side0 < 1 || @side1 < 1 || @side2 < 1
        begin
          raise TriangleError.new
        # rescue TriangleError => error
        end
      end
    if (@side0 + @side1) <  @side2 || (@side1 + @side2) < @side0 || (@side0 + @side2) < @side1
      begin
        raise TriangleError.new
      # rescue TriangleInequality => error
    end
      # end
    # end
  end
# end
    case triangle_array
    when @side0 == @side1 && @side1 == @side2 then
      return :equilateral
    when @side1 == @side2 || @side0 == @side2 || @side0 == @side1 && (triangle_array.uniq.length == triangle_array.length).count == 1 then
      return :isosceles
    when triangle_array.uniq.length == triangle_array.length then
      return :scalene
    end
  end



    class TriangleError < StandardError
    end
end
