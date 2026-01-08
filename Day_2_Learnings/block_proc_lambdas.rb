# Blocks: The Silent Partners
# A block is simply the code between do...end or {...}. It is not an object; it’s just a part of a method call

# The code inside the { } is the block
[1, 2, 3].each { |n| puts n }

# To use a block inside your own method, you use yield. This "pauses" the method and runs the code in the block.
def simple_timer
  puts "Starting..."
  yield # The block code runs here
  puts "Finished!"
end

simple_timer { puts "--- Working ---" }



# 2. Procs: The Reusable Block
# A Proc (Procedure) is a block that has been saved into a variable. Unlike blocks, Procs are objects.
# Create a Proc
hello_proc = Proc.new { |name| puts "Hello, #{name}!" }

# Execute it using .call
hello_proc.call("Ruby") # Result: Hello, Ruby!



# 3. Lambdas: The Precise Procs
# A Lambda is a special type of Proc. It behaves more like a "real" method. There are two main differences between a Proc and a Lambda:

# Difference A: Argument Strictness
# Procs don't care if you pass the wrong number of arguments (they'll just use nil).

# Lambdas will throw an error if the arguments don't match exactly.

my_proc = Proc.new { |a, b| puts "A: #{a}, B: #{b}" }
my_proc.call(10) # Works: A: 10, B: 

my_lambda = ->(a, b) { puts "A: #{a}, B: #{b}" }
# my_lambda.call(10) # Throws ArgumentError!

# Difference B: Return Behavior
# Procs return from the entire method where they are called.

# Lambdas return only from the lambda itself.

def test_return
  # A Proc return exits the whole function
  p = Proc.new { return "Exit from Proc" }
  p.call
  "This line will never run"
end

def test_lambda
  # A Lambda return only exits the lambda
  l = -> { return "Exit from Lambda" }
  l.call
  "This line WILL run"
end