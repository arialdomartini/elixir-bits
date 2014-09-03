import Kernel, except: [raise: 2]

defmodule Powers do
  def raise(x, n) when n < 0 do 1/raise(x, -n) end
  def raise(_, 1) do 1 end
  def raise(x, n) do x * raise(x, n-1)  end
end
