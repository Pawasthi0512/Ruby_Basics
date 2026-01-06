inventory = {
  laptop: 1200,
  phone: 800,
  book: 20,
  notebook: 5
}

inventory.each do |item, price|
  puts "The #{item} costs $#{price}"
end

# Goal: Create labels for each item
labels = inventory.map { |item, price| "#{item.capitalize}: $#{price}" }
# Result: ["Laptop: $1200", "Phone: $800", "Book: $20", "Notebook: $5"]

# Goal : select items that cost more than $100
expensive_items = inventory.select { |item, price| price > 100 }
# Result: { laptop: 1200, phone: 800 }

# Goal: reject items that cost less than $50
cheap_items = inventory.reject { |item, price| price > 50 }
# Result: { book: 20, notebook: 5 }

# Goal: transform the hash to apply a 10% discount on all items
discounted_inventory = inventory.transform_values { |price| (price * 0.9).round(2) }
# Result: { laptop: 1080.0, phone: 720.0, book: 18.0, notebook: 4.5 }

inventory.keys   # Result: [:laptop, :phone, :book, :notebook]
inventory.values # Result: [1200, 800, 20, 5]

# find: Returns the FIRST key-value pair (as a 2-element array)
found = inventory.find { |item, price| price < 10 }
# Result: [:notebook, 5]

# any?: Is anything free?
inventory.any? { |item, price| price == 0 } 
# Result: false

# all?: Is everything over $1?
inventory.all? { |item, price| price > 1 }
# Result: true

# Goal: Calculate the total value of all stock
total_value = inventory.reduce(0) do |sum, (item, price)|
  sum + price
end
# Result: 2025

