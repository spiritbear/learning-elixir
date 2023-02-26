## Description: Maps in Elixir
# Topics Covered
# 1. Initializing a Map
# 2. Accessing values
# 3. Updating values & merging
# 4. Removing values
# 5. Iterating

empty_map = %{}
initial_map = %{a: 1, b: 2, c: 3}

# get an element from a map
initial_map[:a]
Map.get(initial_map, :a)
Map.get(initial_map, :x) # will return nil

# get multiple elements from the map
Map.take(initial_map, [:a, :b])
Map.take(initial_map, [:a, :b, :x])

# update a map using methods
initial_map = %{a: 1, b: 2, c: 3}
new_map = Map.put(initial_map, :a, 4) # operations are non destructive
new_map

# add a new key-value pair to a map
new_map = Map.put(initial_map, :x, 10)
new_map

# update a map using concat, you cant add using this operator
initial_map = %{a: 1, b: 2, c: 3}
%{initial_map | a: 4}

# remove a key-value pair from a map
initial_map = %{a: 1, b: 2, c: 3}
result = Map.delete(initial_map, :a)
result

# utility methods
Map.keys(initial_map)   # get all the keys
Map.values(initial_map) # get all the values


# split a map
Map.split(initial_map, [:a, :c, :e])

# iterating on a map
Enum.each(
  initial_map,
  fn ({key, value}) ->
    IO.puts(key)
    IO.puts(value)
    IO.puts("-----")
  end
)

# using a map function
# Enum.into(%{}) is used to convert the list to a map, the map method always returns a list
initial_map = %{a: 1, b: 2, c: 3}
initial_map |>
Enum.map(
  fn ({key, value}) ->
    {key, value * 2}
  end
) |>
Enum.into(%{})


# merging 2 maps
Map.merge(%{a: 1, b: 2}, %{a: 3, d: 4}) # if keys are common the one on the RHS will be taken

# references
# https://joyofelixir.com/10-maps-in-elixir/
# https://elixir-lang.org/getting-started/maps.html
