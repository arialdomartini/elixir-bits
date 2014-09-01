defmodule Geom do
  @vsn 1.1

  @spec area(atom(), number(), number()) :: number()

  def area(:rectangle, length, width) when length >= 0 and width >= 0 do
    length * width 
  end
  def area(:triangle, base, height) when base >= 0 and height >= 0 do 
    base * height / 2 
  end
  def area(:ellipse, a, b) when a >= 0 and b >= 0 do
    a * b * :math.pi 
  end
  
end
