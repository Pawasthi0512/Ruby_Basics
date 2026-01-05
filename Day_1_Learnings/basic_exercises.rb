# Exercise 1: The Interactive Greeter
# Goal: Practice gets.chomp (input) and String interpolation.

# Task: Ask the user for their first name, last name, and favorite color. Print a sentence like: "Hello PUNEET AWASTHI, your favorite color is blue!"

# Hint: Use .strip, .upcase, and #{}.
puts "--- Interactive Greeter ---"
print "Enter your first name: "
first_name = gets.chomp.strip.upcase
print "Enter your last name: "
last_name = gets.chomp.strip.upcase
print "Enter your favorite color: "
favorite_color = gets.chomp.strip.downcase
puts "Hello #{first_name} #{last_name}, your favorite color is #{favorite_color}!"
puts "\n"