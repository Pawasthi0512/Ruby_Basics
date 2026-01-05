# 1. STRING MANIPULATION
# Strings in Ruby are mutable (can be changed) and have many helper methods.
puts "--- 1. STRINGS ---"
str = "  ruby is fun  "

puts "Cleaned: '#{str.strip}'"          # Removes whitespace from ends
puts "Capitalized: '#{str.strip.capitalize}'" 
puts "Split into array: #{str.split(' ')}" # Creates an array of words
puts "Replacement: #{str.gsub("fun", "awesome")}"
puts "Check inclusion: #{str.include?("ruby")}" # Returns true
puts ""

# 2. ARRAY MANIPULATION
# Arrays are ordered lists. You can treat them like stacks, queues, or sets.
puts "--- 2. ARRAYS ---"
nums = [3, 1, 4, 1, 5]

nums << 9                         # Shovel operator (adds to end)
nums.push(2)                      # Same as <<
nums.pop                          # Removes and returns the last element (2)
nums.uniq!                         # Removes duplicates (the ! modifies the original)
nums.sort!                        # Sorts the original array

puts "Sorted unique: #{nums}"
puts "Joined as string: #{nums.join(' -> ')}"
puts "First & Last: #{nums.first} and #{nums.last}"
puts ""

# 3. HASH MANIPULATION
# Hashes are key-value pairs. They are highly optimized for fast lookup.
puts "--- 3. HASHES ---"
user = { name: "Puneet", role: "Dev", level: 1 }

# Adding/Updating
user[:language] = "Ruby"          # Add a new key-value pair
user[:level] = 2                  # Update an existing value

# Fetching
puts "Keys: #{user.keys}"         # Returns [:name, :role, :level, :language]
puts "Values: #{user.values}"
puts "Name is: #{user.fetch(:name)}" # Safer than user[:name]

# Merging two hashes
extra_info = { location: "India", status: "Active" }
full_profile = user.merge(extra_info)

puts "Merged Profile: #{full_profile}"