# how to do comprehensions in elixir (like list comprehensions in python)

# iterate over a list
list = [1, 2, 3]
for x <- list do
  IO.puts(x)
end

# written as a one liner
for x <- list, do: IO.puts(x)
for x <- list, do: x ** x # this is equivalent to doing a map

# multiple generators, this will loop over all combinations of the two lists, so 9 in total
# this doesnot do what you think it does.
for x <- list, idx <- 0..(length(list) - 1) do
  IO.puts("index: #{idx}, value: #{x}")
end

# if you want to iterate over a list and get the index, use Enum.with_index
# the example below also pattern matches each tuple returned by Enum.with_index
for {val, idx} <- Enum.with_index(list) do
  IO.puts("index: #{idx}, value: #{val}")
end

# one liner for is_even? function

def is_even?(x), do: rem(x, 2) == 0
