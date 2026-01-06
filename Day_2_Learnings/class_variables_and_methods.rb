# 1. Class Variables (@@variable)
# Definition: These variables are shared across all instances of a class. There is only one copy of this variable in memory.
# Use Case: Tracking global stats for the class, like a counter for how many objects have been created.
# Warning: They are shared with subclasses (inheritance), which can sometimes lead to unexpected behavior if you aren't careful.
# 2. Class Methods (def self.method_name)
# Definition: These are methods called on the Class itself, not on an individual object.
# Syntax: You define them by putting self. before the method name.
# Use Case: Tasks that don't require specific object data (e.g., Book.total_count or Book.find_by_author)

class Book
  # 1. Initialize a class variable (shared by all books)
  @@book_count = 0

  def initialize(title)
    @title = title
    # 2. Increment the shared counter every time a new book is created
    @@book_count += 1
  end

  # 3. Define a Class Method to expose the class variable
  # 'self' here refers to the Class 'Book'
  def self.total_books
    puts "Total books in library: #{@@book_count}"
  end
end

# --- Execution ---

# Notice we call the class method BEFORE creating any objects
Book.total_books # Output: Total books in library: 0

b1 = Book.new("1984")
b2 = Book.new("Brave New World")
b3 = Book.new("Fahrenheit 451")

# The class method is called on the Class name, not the objects
puts Book.total_books # Output: Total books in library: 3

# Trying to call it on an object (b1.total_books) would cause an Error!