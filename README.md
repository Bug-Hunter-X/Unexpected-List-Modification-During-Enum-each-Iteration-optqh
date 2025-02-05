# Elixir List Modification During Enum.each

This repository demonstrates a common error in Elixir when attempting to modify a list while iterating over it using `Enum.each`.  The provided code attempts to remove an element from a list during iteration, but fails to produce the expected result because `Enum.each` does not support in-place modification.

The solution demonstrates the correct approach using `Enum.filter` or `List.delete` in conjunction with a new list assignment.