# Linked lists hold zero, one, or more elements in the chosen order.
# Lists in Elixir are specified between square brackets:
my_list = [1, "two", 3, :four]

# lists can also have different data types

# prepend an element to a list
# this is a non destructive operation and will return a new list
# the new list will have the new element at the beginning
# the old list will remain unchanged
new_list = [0 | my_list]
new_list = [0] ++ my_list


# references
# https://hexdocs.pm/elixir/1.12/List.html
