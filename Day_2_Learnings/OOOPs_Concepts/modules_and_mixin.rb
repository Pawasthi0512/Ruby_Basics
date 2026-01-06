# Modules and Mixins
# Why use Modules instead of Inheritance? Inheritance (using <) represents an "is-a" relationship (A Textbook is a Book). Modules represent a "has-a" or "can-do" relationship (A Book can be Shippable).
# Key Differences:
# No Instances: You cannot create an object from a module (e.g., MyModule.new fails).
# Multiple Mixins: A class can only inherit from one parent, but it can include unlimited modules.
# Namespace: Modules are also used to group similar classes together to avoid name clashes


# Let's say we have a Book class and a Furniture class. Both need to calculate shipping costs based on weight. Instead of writing the logic twice, we use a Module.

# 1. Define the Module (The Toolbox)
module Shippable
  def calculate_shipping(weight)
    base_fee = 5.0
    total = base_fee + (weight * 0.5)
    puts "Shipping cost: $#{total}"
  end
end

# 2. Mix it into the Book class
class Book
  include Shippable # Mixin
  attr_reader :title

  def initialize(title)
    @title = title
  end
end

# 3. Mix it into a totally different class
class Chair
  include Shippable # Mixin
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

# --- Execution ---

b1 = Book.new("The Great Gatsby")
c1 = Chair.new("Office Chair")

b1.calculate_shipping(1.5) # Output: Shipping cost: $5.75
c1.calculate_shipping(20)  # Output: Shipping cost: $15.04


############################################################################################################################

# Include vs. Extend
# There are two main ways to bring a module into a class
# include Adds methods as Instance Methods.Called on the object: book.method
# extend Adds methods as Class Methods.Called on the class: Book.method
  def apply_vat(price)
    price * 1.20
  end
end

class Book
  extend TaxRules
end

# Since we used 'extend', it belongs to the Class, not the individual book
puts Book.apply_vat(20) # Output: 24.0