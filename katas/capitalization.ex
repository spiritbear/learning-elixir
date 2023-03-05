defmodule Capitalize do
  def process(string) do
    string
    |> String.split(" ")
    |> Enum.map(fn word -> String.capitalize(word) end)
    |> Enum.join(" ")
  end
end

IO.puts(Capitalize.process("it is a good day to live"))
