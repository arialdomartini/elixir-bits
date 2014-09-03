import Kernel, except: [raise: 2]

defmodule Powers do
  def raise(x, n) when n < 0 do 1/raise(x, -n) end
  def raise(x, n) do raise_acc(x, n, 1) end

  def raise_acc(_, 1, a) do a end
  def raise_acc(x, n, a) do raise_acc(x, n-1, x * a) end

end
