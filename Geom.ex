defmodule Geom do
  @vsn 1.1

  @spec area(atom(), number(), number()) :: number()
  def area(shape, a, b) do
    case shape do
      :rectangle -> a * b
      :triangle  -> a * b /2
      :ellipse   -> :math.pi * a * b
      _          -> 0
    end
  end

  @spec area( { atom(), number(), number() } ) :: number()
  def area({shape, a, b }) do
    area(shape, a, b)
  end
end
