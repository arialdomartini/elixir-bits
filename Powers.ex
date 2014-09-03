import Kernel, except: [raise: 2]

defmodule Powers do
  def raisep(x, n) when n < 0 do 1/raisep(x, -n) end
  def raisep(x, n) do raise_acc(x, n, 1) end

  def raise_acc(_, 1, a) do a end
  def raise_acc(x, n, a) do raise_acc(x, n-1, x * a) end


  defp nth_root(x, n, estimate) do
    f = raise(estimate, n) - x
    f_prime = n * raise(estimate, n - 1)
    next = estimate - f / f_prime
    change = abs(estimate - next)
    cond do
      change < 1.0e-8 -> next
      true -> nth_root(x, n, next)
    end
  end


  def raise(_, 0) do
    1
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, -n)
  end

  def raise(x, n) when n > 0 do
    raise(x, n, 1)
  end


  defp raise(_x, 0, accumulator) do
    accumulator
  end

  defp raise(x, n, accumulator) do
    raise(x, n - 1, x * accumulator)
  end

end
