```elixir
list = [1, 2, 3, 4, 5]

# Correct approach 1: Using Enum.filter
newList = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(newList) # Output: [1, 2, 4, 5]

# Correct approach 2: Using List.delete
newList = List.delete(list, 3)
IO.inspect(newList) # Output: [1, 2, 4, 5]

# Incorrect Approach (demonstrates the bug)
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x -> 
  if x == 3 do
    list = List.delete(list, x) 
  end
  IO.puts(x)
end)

IO.inspect(list) # Output: [1,2,3,4,5]
```