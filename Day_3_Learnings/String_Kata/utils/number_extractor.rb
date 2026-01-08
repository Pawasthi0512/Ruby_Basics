class NumberExtractor
  def extract_numbers(input_numbers)
    return [] if input_numbers.nil? || input_numbers.empty?

    delimiters = [',', "\n"]

    if input_numbers.start_with?('//')
        header, input_numbers = input_numbers.split("\n", 2)
        if header.include?('[')
        custom_delimiters = header.scan(/\[([^\]]+)\]/).flatten
        delimiters.concat(custom_delimiters)
        else
        delimiters << header[2]
        end
    end
    delimiter_pattern = Regexp.union(delimiters)
    input_numbers.split(delimiter_pattern).map(&:to_i)
    end
end