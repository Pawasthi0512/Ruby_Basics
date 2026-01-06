# Inheritance and the super Keyword
# The Theory
# 1. Inheritance (<) Inheritance allows a subclass (child) to inherit all the methods and data from a superclass (parent).
# Think of Book as the parent.
# Textbook and Audiobook are children. They are both "Books," but they have extra features unique to them.
# 2. The super Keyword When you "override" a method in a child class (writing a new version of a method that already exists in the parent), you might still want to use the logic from the parent.
# super tells Ruby: "Go run the method with the same name in my parent class, then come back here and finish the rest.

# The Superclass (Parent)
class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def description
    "#{@title} by #{@author}"
  end
end

# The Subclass (Child)
class Textbook < Book
  attr_reader :subject

  def initialize(title, author, subject)
    # 'super' calls the initialize method of Book
    # It passes title and author up to the parent
    super(title, author) 
    
    # Then we handle the part unique to Textbook
    @subject = subject
  end

  # Overriding the description method
  def description
    # super calls the parent's description ("Title by Author")
    # and we add more text to it.
    super + " (Subject: #{@subject})"
  end
end

# --- Execution ---

general_book = Book.new("1984", "George Orwell")
math_book = Textbook.new("Calculus 101", "Dr. Smith", "Mathematics")

puts general_book.description
# Output: 1984 by George Orwell

puts math_book.description
# Output: Calculus 101 by Dr. Smith (Subject: Mathematics)