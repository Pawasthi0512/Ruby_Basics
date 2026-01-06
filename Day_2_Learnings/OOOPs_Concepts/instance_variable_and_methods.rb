# 1. Instance Variables (@variable)
# Definition: These are variables that belong to a specific instance (object) of a class.
# Scope: They are "private" by default. You can use them anywhere inside the class methods, but you cannot access them from outside the class (e.g., puts book1.@title will cause an error).
# Persistence: They stay alive as long as the object exists.
# 2. Instance Methods
# Definition: These are the "behaviors" or "actions" an object can perform.
# Interaction: Methods are how we interact with instance variables. Since we can't touch @title directly from the outside, we write a method to do it for us

class Book
  def initialize(title, author)
    @title = title
    @author = author
    @current_page = 1 # We can set default values too!
  end

  # This is a getter method (allows us to see the title). In Ruby we define a method to access instance variables with same name and that
  # variable return its value.
  def title
    @title
  end

  # This is an action method (behavior)
  def turn_page
    @current_page += 1
    puts "You turned the page. You are now on page #{@current_page}."
  end

  # This method uses multiple instance variables
  def bookmark_info
    "Book: #{@title} | Author: #{@author} | Current Position: Page #{@current_page}"
  end
end

# --- Execution ---

my_book = Book.new("The Great Gatsby", "F. Scott Fitzgerald")

# 1. Calling a behavior method
my_book.turn_page # Output: You turned the page. You are now on page 2.
my_book.turn_page # Output: You turned the page. You are now on page 3.

# 2. Accessing data via a method
puts my_book.title # Output: The Great Gatsby

# 3. Viewing the state
puts my_book.bookmark_info 
# Output: Book: The Great Gatsby | Author: F. Scott Fitzgerald | Current Position: Page 3