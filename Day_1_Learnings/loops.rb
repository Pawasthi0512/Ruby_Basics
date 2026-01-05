1. Times Iterator
The simplest way to run a block a specific number of times.
puts "--- 1. Times Iterator ---"
5.times do |i|
  puts "Iteration number #{i}"
  i+=1
end
puts "\n"

2. Each Iterator (The Gold Standard)
This is the most common way to loop through arrays or hashes.
puts "--- 2. Each Iterator ---"
fruits = ["Apple", "Banana", "Cherry"]
fruits.each do |fruit|
  puts "I love eating #{fruit}s"
end
puts "\n"

# 3. While and Until Loops
# Use these when you don't know exactly how many times you need to loop.
puts "--- 3. While and Until ---"
counter = 3
while counter > 0
  puts "While: #{counter}"
  counter -= 1
end

# Until is the opposite: it runs while the condition is FALSE.
until counter == 3
  puts "Until: #{counter}"
  counter += 1
end
puts "\n"

# 4. Range Loops
# Useful for looping through a specific span of numbers.
puts "--- 4. Range Iteration ---"
(1..3).each do |num|
  puts "Range number: #{num}"
end
puts "\n"

# 5. Map (Transforming Data)
# Unlike 'each', 'map' returns a NEW array with the modified values.
puts "--- 5. Map Iterator ---"
numbers = [1, 2, 3]
doubled = numbers.map { |n| n * 2 }
puts "Original: #{numbers}"
puts "Doubled: #{doubled}"
puts "\n"

# 6. Loop Keywords: break and next
# 'next' skips to the next iteration (like 'continue' in other languages).
# 'break' exits the loop entirely.
puts "--- 6. Break and Next ---"
(1..5).each do |n|
  next if n == 2   # Skip the number 2
  break if n == 4  # Stop the loop at 4
  puts "Current number: #{n}"
end