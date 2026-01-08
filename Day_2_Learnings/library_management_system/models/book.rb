require_relative 'item'
class Book < Item
  attr_reader :pages

  def initialize(id, title, creator, pages)
    super(id, title, creator) # Call parent constructor
    @pages = pages
  end
end