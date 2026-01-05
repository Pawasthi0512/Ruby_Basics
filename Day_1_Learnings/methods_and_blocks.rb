# 1. Standard Method with Parameters
# You can set default values for parameters (e.g., greeting = "Hello")
def greet(name, greeting = "Hello")
  "#{greeting}, #{name}!" # Implicit return: no need to type 'return'
end

puts "--- 1. Simple Methods ---"
puts greet("Puneet")            # Uses default "Hello"
puts greet("Puneet", "Welcome") # Overrides default
puts "\n"

# 2. Methods with Blocks (The 'yield' Keyword)
# 'yield' pauses the method and runs the code inside the block.
def simple_timer
  puts "Timer started..."
  yield if block_given? # Runs the code passed in the block
  puts "Timer finished."
end

puts "--- 2. Methods with Blocks ---"
simple_timer do
  puts "--- [Calculating some heavy data...] ---"
end

simple_timer do
  sum = 0
  (1..5).each { |n| sum += n }
  puts "Sum from 1 to 5 is #{sum}"
end

puts "No block example:"
simple_timer() # No block given
puts "\n"

# 3. Passing Data to Blocks
# You can pass arguments from the method into the yield statement.
def math_operation(a, b)
  puts "Inputs: #{a} and #{b}"
  result = yield(a, b) # Passes a and b into the block
  puts "The result of the block logic is: #{result}"
end

puts "--- 3. Passing Data to Blocks ---"
# The values in | | are the parameters received from yield
math_operation(5, 3) do |x, y|
  x * y
end
puts "\n"

# 4. Explicit Block Parameter (&block)
# Sometimes you want to capture the block as a variable to pass it elsewhere.
def run_twice(&my_block)
  my_block.call
  my_block.call
end

puts "--- 4. Explicit Blocks ---"
run_twice { puts "Echo!" }