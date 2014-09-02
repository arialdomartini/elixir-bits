defmodule Gcd do

  def gcd(a, b) when a == b do
    a
  end

  def gcd(a, b) when a > b do
    gcd(a-b, b)
  end

  def gcd(a, b) when a < b do
    gcd(b, b-a)
  end

end
