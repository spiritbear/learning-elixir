# enums can operate on any data structure that is ennumerable

# reduce, first argument is the ennumerable data, second is the accumulator, third is the function
# the function takes two arguments, the current element and the accumulator,
# and the return value is the new accumulator
Enum.reduce([1, 2, 3], 0, fn (x, acc) -> x + acc end)
