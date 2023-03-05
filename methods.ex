

# multi-line anonymous method
initial_map = %{a: 1, b: 2, c: 3}
Enum.each(
  initial_map,
  fn ({key, value}) ->
    IO.puts(key)
    IO.puts(value)
    IO.puts("-----")
  end
)

# single-line anonymous method
# the syntax is fn(args) -> body end
initial_map = %{a: 1, b: 2, c: 3}
Enum.each(
  initial_map,
  fn ({key, value}) -> IO.puts(key); IO.puts(value);IO.puts("-----") end
)

# you cant define a method outside of a module unless you use anonymous functions
defmodule Numbers do
  def is_even?(x) do
    rem(x, 2) == 0
  end

  # single line method definition, the do: is required, end is not
  def is_even2?(x), do: rem(x, 2) == 0
end

# anonymous functions can be assigned to variables
# the syntax is fn(args) -> body end
# calling it is the same as calling a method add.(1, 2)
add = fn (x, y) -> x + y end
# here &() is shorthand for fn() -> end, whatever is inside the () is the body
add = &(&1 + &2)
