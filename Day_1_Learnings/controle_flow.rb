# 1. Standard If-Elsif-Else Statement
puts "--- 1. Standard If-Elsif-Else Statement ---"
age = 20        
if age < 13
  puts "You are a child."
elsif age >= 13 && age < 20
  puts "You are a teenager."
else
  puts "You are an adult."
end
puts "\n"

# 2. Unless Statement
# 'unless' is the opposite of 'if'. It runs only if the condition is FALSE.
# It's great for writing cleaner code than 'if !condition'.

puts "--- 2. Unless Statement ---"
is_raining = false
unless is_raining
  puts "It's not raining. You can go outside!"
else
  puts "It's raining. Better stay indoors."
end
puts "\n"

# 3. Ternary Operator
# A compact syntax for simple if-else statements.
puts "--- 3. Ternary Operator ---"
number = 7
result = number.even? ? "Even Number" : "Odd Number"
puts "#{number} is an #{result}."
puts "\n"

# 4. Case Statement
puts "--- 4. Case Statement ---"
day = "Wednesday"
case day
when "Monday"
  puts "Start of the work week."
when "Wednesday"
  puts "Midweek day."
when "Friday"
  puts "End of the work week."
else
  puts "Just another day."
end
puts "\n"

# 5. Modifier Form of If and unless
puts "--- 5. Modifier Form of If ---"
score = 85
puts "You passed the exam!" if score >= 50
temperature = 30
puts "It's cold outside!" unless temperature > 20
puts "\n"

# 6. Logical Operators in Control Flow
puts "--- 6. Logical Operators in Control Flow ---"
a = 10
b = 20
if a > 5 && b > 15
  puts "Both conditions are true."
end 

# 7. # The 'Short-circuit' OR
# If the first value is nil or false, it takes the second.
username = nil
display_name = username || "Guest_User"
puts "Displaying as: #{display_name}"
puts "\n"
# 8. The 'Short-circuit' AND
# If the first value is nil or false, it returns that; otherwise, it returns the second.
is_logged_in = true
welcome_message = is_logged_in && "Welcome back, User!"
puts welcome_message if welcome_message
puts "\n"