
class Library
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def find_by_title(query)
    @items.select { |item| item.match?(query) }
  end

  def list_inventory
    @items.each { |item| puts item }
  end

  def checkout_item(id, user)
    item = find_by_id(id)
    
    if item&.available?
      item.lend_to(user)
      puts "Success: '#{item.title}' has been lent to #{user}."
    else
      puts "Error: Item #{id} is currently unavailable or does not exist."
    end
  end

  def receive_return(id)
    item = find_by_id(id)
    puts item
    
    if item && item.status == :lent
      item.return_item
      puts "Success: '#{item.title}' is now back in the library."
    else
      puts "Error: Could not process return for Item #{id}."
    end
  end

  private
  def find_by_id(id)
    @items.find { |item| item.id == id }
  end
end