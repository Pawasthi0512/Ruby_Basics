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


# Exercise 2: The Even-Odd Filter
# Goal: Practice Arrays and the .select iterator.

# Task: Create an array of numbers from 1 to 20. Create two new arrays: one containing only even numbers and one containing only odd numbers.

# Hint: (1..20).to_a creates the initial array. Use .even? or % 2 == 0.

puts "--- Even-Odd Filter ---"
numbers = (1..20).to_a
even_numbers = numbers.select { |n| n.even? }
odd_numbers = numbers.select { |n| n.odd? } 
puts "Even Numbers: #{even_numbers}"
puts "Odd Numbers: #{odd_numbers}"
puts "\n"


# Exercise 3: Simple Calculator Method
# Goal: Practice Methods, Parameters, and case statements.

# Task: Write a method calculate(a, b, operator) that handles +, -, *, and /.

# Expected Output: calculate(10, 2, "*") should return 20.
def calculate(a, b, operator)
  case operator
  when "+"
    a + b
  when "-"
    a - b
  when "*"
    a * b
  when "/"
    if b != 0
      a / b
    else
      "Error: Division by zero"
    end
  else
    "Error: Unsupported operator"
  end
end 
puts "--- Simple Calculator ---"
puts "10 + 5 = #{calculate(10, 5, "+")}"
puts "10 - 5 = #{calculate(10, 5, "-")}"
puts "10 * 5 = #{calculate(10, 5, "*")}"
puts "10 / 5 = #{calculate(10, 5, "/")}"
puts "10 / 0 = #{calculate(10, 0, "/")}"
puts "10 ^ 5 = #{calculate(10, 5, "^")}"
puts "\n"


# Exercise 4: FizzBuzz (The Classic Interview Question)
# Goal: Practice Loops and Modulo operators.

# Task: Print numbers 1 to 30.

# If divisible by 3, print "Fizz".

# If divisible by 5, print "Buzz".

# If divisible by both, print "FizzBuzz".

# Otherwise, print the number.
puts "--- FizzBuzz ---"
(1..30).each do |n|
  if n % 3 == 0 && n % 5 == 0
    puts "Number #{n}: FizzBuzz"
  elsif n % 3 == 0
    puts "Number #{n}: Fizz"
  elsif n % 5 == 0
    puts "Number #{n}: Buzz"
  else
    puts "Number #{n}: #{n}"
  end
end
puts "\n"