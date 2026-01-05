# Array (Lists)
puts "--- 4. Arrays ---"
fruits = ["Apple", "Banana", "Cherry"]
puts "Fruits: #{fruits.join(', ')}"
fruits << "Date" # Adding an element to the array
puts "After adding Date: #{fruits.join(', ')}"
puts "First fruit: #{fruits[0]}"
puts "Number of fruits: #{fruits.length}"
puts "Is 'Banana' in the list? #{fruits.include?('Banana')}"    
puts "Last fruit: #{fruits[-1]}"
puts "\n"

# Hash (Dictionaries)
person = {first_name: "Puneet", last_name: "Awasthi", age: 25, height: 6.2, role: "Developer"}
puts "--- 5. Hashes ---"
puts "Person Details:"
puts "Name: #{person[:first_name]} #{person[:last_name]}"
puts "Age: #{person[:age]}"
puts "Height: #{person[:height]}"
puts "Role: #{person[:role]}"
person[:location] = "India" # Adding a new key-value pair
puts "After adding location: #{person[:location]}"
puts "All Details: #{person}"
puts "\n"
