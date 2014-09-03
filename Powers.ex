defmodule Powers do
  def raisez(_, 1) do 1 end
  def raisez(x, n) do x * raisez(x, n-1)  end
end
