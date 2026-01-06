products = [
  { name: "Laptop", price: 1200, category: :tech },
  { name: "Phone", price: 800, category: :tech },
  { name: "Book", price: 20, category: :education },
  { name: "Notebook", price: 5, category: :education }
]

# Goal: Get an array of just the product names in uppercase
product_names = products.map { |p| p[:name].upcase }
# Result: ["LAPTOP", "PHONE", "BOOK", "NOTEBOOK"]

# Goal: Find all products that cost more than $100
expensive_items = products.select { |p| p[:price] > 100 }
# Result: [{name: "Laptop", ...}, {name: "Phone", ...}]

# Goal: Get rid of anything in the :tech category
non_tech_items = products.reject { |p| p[:category] == :tech }
# Result: [{name: "Book", ...}, {name: "Notebook", ...}]

# Goal: Print a numbered list of products
products.each_with_index do |product, index|
  puts "#{index + 1}. #{product[:name]}"
end
# Output:
# 1. Laptop
# 2. Phone
# ...

# Goal: Count how many products are in each category use reduce
# We start with an empty Hash: {}
category_counts = products.reduce(Hash.new(0)) do |counts, product|
  category = product[:category]
  counts[category] += 1
  counts # Important: The last line must return the object you want to pass to the next loop
end

prices = [1200, 800, 20, 5]
# Starting with an initial value of 0
total_price = prices.reduce(0) do |accumulator, price|
  accumulator + price
end
# Result: 2025

# Goal: Find the first product that belongs to the :education category
first_edu_item = products.find { |p| p[:category] == :education }

# Result: { name: "Book", price: 20, category: :education }
# Note: If no match is found, find returns nil.


# Goal: Is there any product cheaper than $10?
has_cheap_items = products.any? { |p| p[:price] < 10 }
# Result: true (because the Notebook is $5)

# Goal: Are all products in this list tech items?
all_tech = products.all? { |p| p[:category] == :tech }
# Result: false (because of the Book and Notebook)

# Goal: How many items cost more than $100?
expensive_count = products.count { |p| p[:price] > 100 }
# Result: 2