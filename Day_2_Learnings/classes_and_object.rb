# Key Components:
# class keyword: Used to define the blueprint.
# new method: Used to create a specific object from the class.
# initialize method: A special method that runs the moment an object is created. It sets the starting "state" (data) of the object.
# Instance Variables (@): Variables that start with @. They live inside the object and keep track of its specific data.

# 1. Defining the Class (The Blueprint)
class Book
  # The constructor: Runs when Book.new is called
  def initialize(title, author, pages)
    @title = title    # Instance variable
    @author = author  # Instance variable
    @pages = pages    # Instance variable
  end

  # An instance method: Behavior that every book object has
  def read_description
    puts "Reading '#{@title}' by #{@author}. It is #{@pages} pages long."
  end
end

# 2. Creating Objects (Instances of the blueprint)
book1 = Book.new("The Hobbit", "J.R.R. Tolkien", 310)
book2 = Book.new("Atomic Habits", "James Clear", 320)

# 3. Using the Objects
book1.read_description
# Output: Reading 'The Hobbit' by J.R.R. Tolkien. It is 310 pages long.

book2.read_description
# Output: Reading 'Atomic Habits' by James Clear. It is 320 pages long.