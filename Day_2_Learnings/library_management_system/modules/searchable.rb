module Searchable
  def match?(query)
    # Case-insensitive search across title and creator
    title.downcase.include?(query.downcase) || 
      creator.downcase.include?(query.downcase)
  end
end