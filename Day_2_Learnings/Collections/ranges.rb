# There are two ways to define a range, and the number of dots matters significantly:
# Inclusive (..): Includes the end value.
# Exclusive (...): Excludes the end value.


1..5    # 1, 2, 3, 4, 5
1...5   # 1, 2, 3, 4 (Excludes 5)

('a'..'e').to_a # ["a", "b", "c", "d", "e"]

# to_a converts the range into an array.