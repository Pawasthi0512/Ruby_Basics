# The self Keyword
# The Theory
# Think of self as a way for the code to look in a mirror and ask, "Who am I right now?"
# Inside an Instance Method: self refers to the specific instance (object) of the class.
# Inside a Class Definition (but outside a method): self refers to the Class itself.
# Inside a Class Method: self refers to the Class itself.

class Book
  attr_accessor :title

  # 1. Scope: Inside the Class (outside methods)
  puts "Self inside the class body is: #{self}" # Output: Book

  def initialize(title)
    @title = title
  end

  # 2. Scope: Inside an Instance Method
  def announce_self
    puts "Inside this method, self is: #{self}"
    puts "My title is: #{self.title}" # Calling a method on self
  end

  # 3. Scope: Inside a Class Method
  def self.class_info
    puts "Inside a class method, self is: #{self}"
  end
end

# --- Execution ---

b1 = Book.new("The Great Gatsby")

# Testing Instance Scope
b1.announce_self 
# Output: Inside this method, self is: #<Book:0x00007...>

# Testing Class Scope
Book.class_info 
# Output: Inside a class method, self is: Book