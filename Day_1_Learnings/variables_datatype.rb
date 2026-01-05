# 1. Vairables and Dynamic Data Types in Ruby
# This script demonstrates the use of variables and different data types in Ruby.

first_name = "Puneet"               # String
last_name = 'Awasthi'               # String
age = 25                            # Integer
height = 6.2                        # Float
is_learning = true                   # Boolean

puts "--- 1. Basic Variables and Data Types ---"
puts "My name is #{first_name} #{last_name} and I am #{age} years old."
puts "Height: #{height}"
puts "Is learning ruby: #{is_learning}"
puts "\n"

# 2. String (Interpolation and methods)
greeting = "Hello"
puts "--- 2. String Interpolation and Methods ---"
full_name = "#{first_name} #{last_name}"
puts "#{greeting}, #{full_name}!"
puts "Length of full name: #{full_name.length}"
puts "Full name in uppercase: #{full_name.upcase}"
puts "\n"

#3. Numbers (Integer and Float operations)
puts "--- 3. Number Operations ---"
sum = age + 5
product = height * 2
puts "Age after 5 years: #{sum}"
puts "Height after doubling: #{product}"
puts "Is age greater than 30? #{age > 30}"
puts "My age in seconds: #{age * 365 * 24 * 60 * 60}"
puts "\n"

