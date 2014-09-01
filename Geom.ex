defmodule Geom do
  @vsn 1.1

  @spec area(atom(), number(), number()) :: number()

  def area(:rectangle, length, width) do  length * width end
  def area(:triangle, base, height) do base * height / 2 end
  def area(:ellipse, a, b) do a * b * :math.pi end
  
end
