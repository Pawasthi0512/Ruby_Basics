# 1. Operator Overriding
# In Ruby, operators like +, -, *, and / are actually just methods. When you write x + y, Ruby is actually executing x.+(y). This means you can "override" operators in your classes to define custom behavior.
# The Theory
# To override an operator, you define a method named after the operator itself. This is commonly used in classes like Money, Vector, or our Book example to combine objects.

class Book
  attr_reader :title, :pages

  def initialize(title, pages)
    @title = title
    @pages = pages
  end

  # Overriding the + operator
  def +(other_book)
    # Return a new number representing the combined pages
    self.pages + other_book.pages
  end

  # Overriding the == operator for comparison
  def ==(other_book)
    self.title == other_book.title && self.pages == other_book.pages
  end
end

b1 = Book.new("Part 1", 100)
b2 = Book.new("Part 2", 150)

puts b1 + b2  # Output: 250 (Ruby called b1.+(b2))
puts b1 == b2 # Output: false





# ######################################################################################
# This is a very important topic because it highlights a major difference between Ruby and languages like Java or C++.
# In Ruby, Method Overriding is a core feature, but Method Overloading (the way it exists in other languages) does not exist. Let's look at why.

class Book
  def category
    "General Reading"
  end
end

class MedicalBook < Book
  # Overriding the parent method
  def category
    "Scientific Reference"
  end
end


# Method Overloading (The Ruby Way)
# The Theory
# In languages like Java, Method Overloading means having multiple methods with the same name but different numbers or types of arguments (e.g., process(int x) and process(String x)).
# In Ruby, you cannot do this. If you define two methods with the exact same name in the same class, the second one will simply overwrite the first one.
# However, Ruby is so flexible that we achieve the effect of overloading using optional arguments, default values, or splat operators

class Book
  # Instead of two different methods, we use a default argument
  def open(page = 1)
    puts "Opening book to page #{page}."
  end

  # We can also use a "Splat" operator (*) to take any number of arguments
  def add_tags(*tags)
    tags.each { |tag| puts "Added tag: #{tag}" }
  end
end

# --- Execution ---

my_book = Book.new

# Works like 'overloading' by providing different arguments to the same method
my_book.open        # Output: Opening book to page 1.
my_book.open(45)    # Output: Opening book to page 45.

# Flexible arguments
my_book.add_tags("Classic")
my_book.add_tags("Fiction", "19th Century", "Best Seller")