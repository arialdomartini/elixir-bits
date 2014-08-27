defmodule Geom do
  @vsn 1.0

  @moduledoc """
  Geom contains functions to calculate the area of shapes.
  This module overwrites the original Geom module, hence during the compilation warnings are produced.
  """

  @doc """
  Calculates the area of a rectangle.
  The default values are
  length = 1
  width = 1
  """
  @spec area(number(), number()) :: number()
  def area(length \\1, width \\1) do
    length * width
  end
end
