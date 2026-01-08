require_relative './utils/number_extractor'
class Calculator
    def add(numeric_string)
        numbers = NumberExtractor.new.extract_numbers(numeric_string)
        negatives = numbers.select { |n| n < 0 }
        raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
        numbers.reject { |n| n > 1000 }.sum
    end
end