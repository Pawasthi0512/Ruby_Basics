# When you use an instance variable like @title, it is locked inside the object. To interact with it from the outside world, you need two types of methods:
# Getter: A method to read the value.
# Setter: A method to change (write) the value.
# Instead of writing these manually, Ruby provides three shortcuts:
# attr_reader: Creates only the getter. Use this for data that should be "read-only" from the outside (like an ID number).
# attr_writer: Creates only the setter. (Rarely used alone).
# attr_accessor: Creates both the getter and the setter. Use this for data that should be freely read and changed (like a user's nickname or a book's current page)


class Book
  # The Shortcuts
  attr_reader :author     # We can read the author, but not change it.
  attr_accessor :title    # We can read AND change the title.
  attr_accessor :pages    # We can read AND change the page count.

  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

# --- Execution ---

my_book = Book.new("The Great Gatsby", "F. Scott Fitzgerald", 180)

# 1. Testing attr_reader (Read Only)
puts my_book.author # Output: F. Scott Fitzgerald
# my_book.author = "New Guy" # This would THROW AN ERROR!

# 2. Testing attr_accessor (Read and Write)
puts my_book.title # Output: The Great Gatsby
my_book.title = "Gatsby the Great" # Changing the value
puts my_book.title # Output: Gatsby the Great

# 3. Testing attr_accessor for pages
my_book.pages = 200
puts "New page count: #{my_book.pages}" # Output: New page count: 200