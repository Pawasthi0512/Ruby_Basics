# Set always contains unique elements and is unordered.

require 'set'

# Method 1: Convert an array with duplicates
numbers = [1, 2, 2, 3, 4, 4, 5].to_set
# Result: #<Set: {1, 2, 3, 4, 5}>

# Method 2: Initialize and add
users = Set.new
users.add("Alice")
users << "Bob"
users.add("Alice") # This will be ignored

# Result: #<Set: {"Alice", "Bob"}>

# 2. Why use a Set over an Array?
# The primary advantage of a Set is speed.
# Array: To see if an item exists (include?), Ruby has to look at every item one by one (Linear time).
# Set: Uses a hash table internally. Checking for existence is nearly instantaneous, regardless of how large the collection is (Constant time)

set_a = [1, 2, 3].to_set
set_b = [3, 4, 5].to_set

# Intersection (Items in both)
set_a & set_b # #<Set: {3}>

# Union (All items, no duplicates)
set_a | set_b # #<Set: {1, 2, 3, 4, 5}>

# Difference (Items in A but not in B)
set_a - set_b # #<Set: {1, 2}>

# Enumerable Methods on Sets
# Since Set includes the Enumerable module, you can use all the methods we've already learned!

require 'set'
prices = Set.new([10, 20, 30, 40])

# Transform with map (returns an Array)
discounted = prices.map { |p| p * 0.5 } 
# result: [5.0, 10.0, 15.0, 20.0]

# Filter with select (returns a Set)
expensive = prices.select { |p| p > 25 } 
# result: #<Set: {30, 40}>

# Sum with reduce
total = prices.reduce(0, :+)
# result: 100
