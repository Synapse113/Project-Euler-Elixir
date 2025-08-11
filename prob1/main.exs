defmodule Prob1 do
  def main(target) do
    Enum.map(1..(target - 1), fn i ->
      if rem(i, 3) == 0 || rem(i, 5) == 0 do
        i
      else
        0
      end
    end)
    |> Enum.sum()
    |> IO.puts()
  end
end

Prob1.main(1000)
