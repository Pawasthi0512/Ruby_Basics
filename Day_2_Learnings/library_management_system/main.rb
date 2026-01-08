require_relative 'controller/library'
require_relative 'models/book'

my_library = Library.new

# Adding data
my_library.add_item(Book.new(101, "The Pragmatic Programmer", "Andrew Hunt", 352))
my_library.add_item(Book.new(102, "Ruby Under a Microscope", "Pat Shaughnessy", 360))
my_library.add_item(Book.new(103, "Practical Object-Oriented Design", "Sandi Metz", 272))

puts "--- Full Inventory ---"
my_library.list_inventory

puts "\n--- Search Results for 'Ruby' ---"
results = my_library.find_by_title("Ruby")
puts results

# 1. Try to checkout
my_library.checkout_item(101, "Alice")

# 2. Try to checkout the same book again (Should fail)
my_library.checkout_item(101, "Bob")

# 3. Return the book
my_library.receive_return(101)

# 4. Now Bob can take it
my_library.checkout_item(101, "Bob")