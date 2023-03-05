defmodule Factorial do

  def calculate(number) do
    1..number
    |> Enum.to_list()
    |> Enum.reduce(1, fn (x, acc) -> x * acc end)
  end

end
