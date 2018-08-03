class Triangle
attr_accessor :side0, :side1, :side2, :equilateral, :isosceles, :scalene

  def initialize(side0:, side1:, side2:)
    triangle_array = [@side0, @side1, @side2]
      @side0 = triangle_array[0]
      @side1 = triangle_array[1]
      @side2 = triangle_array[2]
  end

  def kind
    # (equilateral:, isosceles:, scalene:)
    # case triangle_array
    if @side0 == @side1 && @side1 == @side2
      return :equilateral
    elsif @side1 == @side2 || @side0 == @side2 || @side0 == @side1 && (triangle_array.uniq.length == triangle_array.length).count == 1
      return :isosceles
    (triangle_array.uniq.length > 1) ? false : true
    if true then return :scalene
end
    # else triangle_array.uniq.length == triangle_array.length
    #   return :scalene

  if @side0 < 0 || @side1 < 0 || @side2 < 0
      # begin
        raise TriangleError.new
      # rescue TriangleError => error
          puts error.message
      end
    if (@side0 + @side1) <  @side2 || @side0 > (@side1 + @side2) || (@side0 + @side2) < @side1
      return
      begin
        raise TriangleInequality.new
      # rescue TriangleInequality => error
          puts error.message
      end

    end
  end
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
