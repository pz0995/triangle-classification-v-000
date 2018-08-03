class Triangle
attr_accessor :side0, :side1, :side2, :equilateral, :isosceles, :scalene, :triangle_array

  def initialize(side0:, side1:, side2:)
      @side0 = side0
      @side1 = side1
      @side2 = side2
      @triangle_array == [side0, side1, side2]
  end

  def kind(equilateral:, isosceles:, scalene:)  
    if @side0 <= 0 || @side1 <= 0 || @side2 <= 0
        begin
          raise TriangleError.new
        # rescue TriangleError => error
            puts error.message
        end
      end
    if (@side0 + @side1) <  @side2 || @side0 > (@side1 + @side2) || (@side0 + @side2) < @side1
      return
      begin
        raise TriangleInequality.new
      # rescue TriangleInequality => error
          puts error.message
    end
      # end
    # end
  end
# end

    case triangle_array
    when @side0 == @side1 && @side1 == @side2
      return :equilateral
    when @side1 == @side2 || @side0 == @side2 || @side0 == @side1 && (triangle_array.uniq.length == triangle_array.length).count == 1
      return :isosceles
    when (triangle_array.uniq.length > 1) == true
     return :scalene
    end
    # else triangle_array.uniq.length == triangle_array.length
    #   return :scalene
  end


    class TriangleInequality < StandardError
      def message
        "Error: the sum of two sides must be greater than the third side"
      end
    end

    class TriangleError < StandardError
      def message
        "Error: each triangle length must be greater than 0"
      end
    end
end
