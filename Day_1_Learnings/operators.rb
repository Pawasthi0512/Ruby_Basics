# 1. Arithmetic Operators
puts "--- 1. Arithmetic Operators ---"
a = 10
b = 3   

puts "Addition: #{a} + #{b} = #{a + b}"
puts "Subtraction: #{a} - #{b} = #{a - b}"
puts "Multiplication: #{a} * #{b} = #{a * b}"
puts "Division(Integer): #{a} / #{b} = #{a / b}"
puts "Division(Float): #{a} / #{b.to_f} = #{a / b.to_f}"
puts "Modulus: #{a} % #{b} = #{a % b}"
puts "Exponentiation: #{a} ** #{b} = #{a ** b}"
puts "\n"


# 2. Comparison Operators
puts "--- 2. Comparison Operators ---"
puts "#{a} == #{b}: #{a == b}"
puts "#{a} != #{b}: #{a != b}"
puts "#{a} > #{b}: #{a > b}"    
puts "#{a} < #{b}: #{a < b}"
puts "#{a} >= #{b}: #{a >= b}"
puts "#{a} <= #{b}: #{a <= b}"
puts "\n"

# 3. Spacehip Operator
puts "--- 3. Spaceship Operator ---"
puts "#{a} <=> #{b}: #{a <=> b}"  # Returns 1 if a > b, 0 if a == b, -1 if a < b
puts "#{b} <=> #{a}: #{b <=> a}"
puts "#{a} <=> #{a}: #{a <=> a}"
puts "\n"

# 4. Logical Operators
puts "--- 4. Logical Operators ---"
x = true
y = false       
puts "#{x} && #{y}: #{x && y}"   # Logical AND
puts "#{x} || #{y}: #{x || y}"   # Logical OR
puts "!#{x}: #{!x}"               # Logical NOT
puts "!#{y}: #{!y}"
puts "\n"

# 5. Assignment Operators
puts "--- 5. Assignment Operators ---"
c = 5
puts "Initial value: c = #{c}"
c += 3
puts "After c += 3: c = #{c}"
c -= 2
puts "After c -= 2: c = #{c}"
c *= 4
puts "After c *= 4: c = #{c}"
c /= 3
puts "After c /= 3: c = #{c}"
c %= 5
puts "After c %= 5: c = #{c}"
c **= 2
puts "After c **= 2: c = #{c}"
puts "\n"  

# 6. Combined Comparison (Parallel Assignment)
name, status = "Puneet", "Learning"
puts "#{name} is currently #{status}"
puts "\n"

# 6. Range Operators
puts "--- 6. Range Operators ---"
inclusive_range = (1..5).to_a
exclusive_range = (1...5).to_a
puts "Inclusive Range (1..5): #{inclusive_range}"
puts "Exclusive Range (1...5): #{exclusive_range}"      
puts "\n"