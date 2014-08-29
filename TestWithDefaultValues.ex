defmodule TestWithDefaultValues do
  def concatenate(a \\ "a", b, c \\ "c") do
    a <> "/" <> b <> "/" <> c
  end

  def run() do
    IO.puts(concatenate("a single parameter"))
    IO.puts(concatenate("one", "two"))
    IO.puts(concatenate("1", "2", "3"))
  end
end
