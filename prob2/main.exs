defmodule Prob2 do
  @target 4_000_000

  def fib(a, b, acc) when a + b < @target do
    fib(b, a + b, [a + b | acc])
  end

  def fib(a, b, acc) when a + b >= @target do
    acc
  end

  def main do
    fib(1, 2, [2, 1])
    |> Enum.filter(&(rem(&1, 2) == 0))
    |> Enum.sum()
    |> IO.puts()
  end
end

Prob2.main()
