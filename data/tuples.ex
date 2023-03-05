# tuples are another data type in elixir that is used quite frequently

# example of an empty tuple and a tuple with values in it
empty_tuple = {}
tuple = {1, 2, 3}

# a tuple can contain any data type.
tuple = {1, 2, 3, "hello", :world, true, [1, 2, 3]}

# tuples are immutable, you cannot change the values in a tuple you can only create a new tuple with the new values
tuple = {1, 2, 3}
new_tuple = {4, 5, 6}
new_tuple = {tuple, new_tuple}

# tuples look similar to lists but they are different
# lists are created using square brackets and tuples are created using curly brackets
# lists are linked lists and tuples are arrays
# lists are used for storing data that is going to be iterated over
# tuples are used for storing data that is not going to be iterated over

# dont confuse a tuple with a map, just because they both use curly brackets

# tuples are indexed by position
elem(tuple, 0) # returns 1, the first element in the tuple

# size of the tuple
tuple_size(tuple) # returns 3

# insert an elment in a tuple
new_tuple = Tuple.insert_at(tuple, 2, 5) # returns {1, 2, 5, 3}

# tuples are also used for pattern matching
{a, b, c} = {1, 2, 3}

# Reference
# https://hexdocs.pm/elixir/1.12/Tuple.html
