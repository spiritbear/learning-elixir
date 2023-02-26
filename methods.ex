

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
